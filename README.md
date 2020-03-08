# post_teste_bmg

App para processo seletivo BMG

## Proposta

Desenvolver um app Flutter com apenas uma view, que será um feed de redes sociais (semelhante ao do Instagram, por exemplo, mas bem reduzido).

 

## Premissas

·         Deverá ser escrito um modelo para representar cada Post que, em sua exibição, deverá conter: nome e foto de quem realizou o post, imagem do post, número de likes e número de comentários;

·         A lista dos comentários é um plus, e deverá ter a imagem e nome de cada pessoa responsável pelo comentário;

·         A tela do feed deve ser composta por uma lista de posts que será servida pelo endpoint explanado abaixo;

·         A entrega deve ser feita num repositório git qualquer, pode me mandar o link como resposta deste e-mail por favor;

 

## Dados do Endpoint

URI: https://mobile.int.granito.xyz/api/feed/getposts

Method: HTTP GET

Não é necessária nenhuma autenticação via JWT ou Api Key. O retorno será uma lista de posts, cada um deles com a seguinte 
estrutura:

{

        "postId": 1,

        "personId": 1,

        "created": "2020-02-29T01:58:00",

        "photoUri": "https://mobile.int.granito.xyz/img/post-1-profile-1.jpg",

        "likes": 542,

        "person": {

            "personId": 1,

            "name": "Olga Larsen",

            "profilePhotoUri": "https://mobile.int.granito.xyz/img/profile-1.jpg"

        },

        "comments": [

            {

                "commentId": 1,

                "postId": 1,

                "personId": 2,

                "person": {

                    "personId": 2,

                    "name": "Tania Breytenbach",

                    "profilePhotoUri": "https://mobile.int.granito.xyz/img/profile-2.jpg"

                },

                "text": "Ohhh such a cutie <3"

            },

            {

                "commentId": 2,

                "postId": 1,

                "personId": 3,

                "person": {

                    "personId": 3,

                    "name": "Peter Oosthuizen",

                    "profilePhotoUri": "https://mobile.int.granito.xyz/img/profile-3.jpg"

                },

                "text": "What breed is it?"

            }

        ]

    },
