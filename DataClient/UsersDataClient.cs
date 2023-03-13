using Newtonsoft.Json;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;

namespace DataClient
{
    public class UsersDataClient : RestClient, IUsersDataClient
    {
        public UsersDataClient() : base("https://gorest.co.in/public/v2/") { }

        protected string accessToken = @"cc5548db906bde350a6194e1128f678e3093d87530d79a6bc9b5d6e0a1502841";

        /// <summary>
        /// Get the Employee by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public UserDTO GetByID(int id)
        {
            var request = new RestRequest("users/{id}", Method.GET);
            request.AddUrlSegment("id", id.ToString());
            request.AddHeader("authorization", "bearer " + accessToken);
            request.RequestFormat = DataFormat.Json;
            var response = HandleRequest<ResponseDTO>(request);
            return response.Data.data.FirstOrDefault();
        }

        /// <summary>
        /// Get all employees
        /// </summary>
        /// <returns></returns>
        public List<UserDTO> GetAllUsers()
        {
            var employees = new List<UserDTO>();
            var request = new RestRequest("users", Method.GET);
            request.AddHeader("authorization", "bearer " + accessToken);
            request.RequestFormat = DataFormat.Json;
            var response = HandleRequest<ResponseDTO>(request);
            var stringData =  response.Content;
            employees = JsonConvert.DeserializeObject<List<UserDTO>>(stringData);
            return employees;
        }

        /// <summary>
        /// Search the user by first name
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public List<UserDTO> SearchUsersByName(string name)
        {
            var employees = new List<UserDTO>();
            var request = new RestRequest("users", Method.GET);
            request.AddQueryParameter("name", name, true);
            request.AddHeader("authorization", "bearer " + accessToken);
            request.RequestFormat = DataFormat.Json;
            var response = HandleRequest<ResponseDTO>(request);
            var stringData = response.Content;
            employees = JsonConvert.DeserializeObject<List<UserDTO>>(stringData);
            return employees;
        }

        /// <summary>
        /// Delete employee
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool DeleteUser(int id)
        {
            RestRequest request = new RestRequest("users/{id}", Method.DELETE);
            request.AddUrlSegment("id", id.ToString());
            request.AddHeader("authorization", "bearer " + accessToken);
            request.RequestFormat = DataFormat.Json;
            var response = HandleRequest<ResponseDTO>(request);
            return response.StatusCode == HttpStatusCode.OK;
        }

        /// <summary>
        /// Patch existing employee
        /// </summary>
        /// <param name="userDTO"></param>
        /// <returns></returns>
        public bool PatchExistingUser(UserDTO userDTO)
        {
            RestRequest request = new RestRequest("users/{id}", Method.PATCH);
            request.AddUrlSegment("id", userDTO.id.ToString());
            request.AddHeader("authorization", "bearer " + accessToken);
            request.RequestFormat = DataFormat.Json;
            request.AddJsonBody(userDTO);
            var response = HandleRequest<ResponseDTO>(request);
            return response.StatusCode == HttpStatusCode.OK;
        }

        /// <summary>
        /// Save new employee
        /// </summary>
        /// <param name="userDTO"></param>
        /// <returns></returns>
        public bool PostNewUser(UserDTO userDTO)
        {
            RestRequest request = new RestRequest("users/{id}", Method.PATCH);
            request.AddUrlSegment("id", userDTO.id.ToString());
            request.AddHeader("authorization", "bearer " + accessToken);
            request.RequestFormat = DataFormat.Json;
            request.AddJsonBody(userDTO);
            var response = HandleRequest<ResponseDTO>(request);
            return response.StatusCode == HttpStatusCode.Created;
        }

        private IRestResponse<T> HandleRequest<T>(RestRequest request)
        {
            IRestResponse<T> response;
            try
            {
                response = Execute<T>(request);
            }
            catch (Exception ex)
            {
                throw new Exception($"error at back end - {ex}");
            }
            
            return response.StatusCode == HttpStatusCode.OK ? response : default;
        }
    }
}
