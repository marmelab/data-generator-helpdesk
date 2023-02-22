# data-generator-helpdesk

Generates fake data for a helpdesk application (users, agents, products, tickets, etc). Used in the [react-admin helpdesk demo](https://github.com/marmelab/react-admin-helpdesk).

https://user-images.githubusercontent.com/99944/212743583-a4ee135f-f55b-4305-86c4-a3da1c49bb98.mov

## Adding To An Existing Project

Add the `data-generator-helpdesk` dependency, then require the data generator and execute it to get an object representing the data:

```sh
$ npm install data-generator-helpdesk
```

```js
const dataGenerator = require("data-generator-helpdesk");

console.log(JSON.stringify(dataGenerator(), null, 2));
// {
//   "agents": [
//     ...
//   ],
//   "customers": [
//     ...
//   ],
//   "products": [
//     ...
//   ],
//   "messages": [
//     ...
//   ],
//   "tickets": [
//     ...
//   ],
//   "locks": [
//     ...
//   ],
//   "ticketReads": [
//     ...
//   ]
// }
```

## Running In A REST API

The data generator can be used to generate data for a REST API via [json server](https://github.com/typicode/json-server). Clone the repository, install it, and run the `server` script:

```sh
$ git clone https://github.com/marmelab/data-generator-helpdesk
$ cd data-generator-helpdesk
$ npm install
$ npm run server
```

## Outputting The Data

If you just need the data, use the `print` script:

```sh
$ git clone https://github.com/marmelab/data-generator-helpdesk
$ cd data-generator-helpdesk
$ npm install
$ npm run print
```

```json
{
  "agents": [
    {
      "id": 0,
      "firstName": "Carlie",
      "lastName": "Cormier",
      "email": "Carlie4@awesomefridge.io",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/415.jpg",
      "isUser": true
    },
    {
      "id": 1,
      "firstName": "Jermain",
      "lastName": "Pollich",
      "email": "Jermain.Pollich@awesomefridge.io",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/216.jpg",
      "isUser": false
    }
  ],
  "customers": [
    {
      "id": "efaf73a5-a134-49c1-a8bf-90165b24413a",
      "firstName": "Lauren",
      "lastName": "Luettgen",
      "email": "Lauren_Luettgen98@hotmail.com",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/621.jpg",
      "phone": "361.681.8435 x16785",
      "address": "31935 Jazmin Port",
      "city": "O'Harashire",
      "zipCode": "91538-9485",
      "state": "Oregon",
      "product_id": "8bacfdb1-b39a-4bcb-ad90-435d01d8627b"
    },
```

## Docker Image

Run the server directly from docker with:

```sh
docker run -it --rm -p 8080:3000 marmelab/data-generator-helpdesk
```

Then browse to http://localhost:8080 to get the list of resources.

To build the docker image from the repo, run:

```sh
$ docker build . -t marmelab/data-generator-helpdesk
```

## License

MIT, courtesy of [marmelab](http://marmelab.com).
