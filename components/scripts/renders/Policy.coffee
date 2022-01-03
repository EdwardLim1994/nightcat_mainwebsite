import $ from "jquery"
import "jquery.cookie"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class Policy
    constructor: ->
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @sectionTitleComponent = {
            title: {
                EN: "",
                BM: "",
                CN: ""
            },
            subtitle: {
                EN: "",
                BM: "",
                CN: ""
            }
            background: "light"
        }
        @lastUpdateText = {
            EN: "Last Update: ",
            BM: "Tarikh Akhir Dikemaskini:",
            CN: "最后修改时间："
        }
        @policies = [
            {
                id: "#privaryPolicy"
                title: {
                    EN: "Privacy Policy",
                    BM: "polisi privasi",
                    CN: "隐私政策"
                }
                lastUpdate: {
                    EN: "29th October 2021",
                    BM: "29 Oktober 2021",
                    CN: "2021 年 10 月 29 日"
                },
                content: [
                    {
                        title: {
                            EN: "introduction",
                            BM: "pengenalan",
                            CN: "介绍"
                        }
                        description: {
                            EN: "
                                <p>1.1 Welcome to the Nightcat platform run by Nightcat Digital Solutions (JM0919865-V) and its affiliates and affiliates (individually and collectively, 'Nightcat', 'we', 'us' or 'our'). Nightcat takes its responsibilities under applicable privacy laws and regulations ('Privacy Laws') seriously and is committed to respecting the privacy rights and concerns of all Users of our Nightcat website and mobile application (the 'Platform') (we refer to the Platform and the services we provide as described on our Platform collectively as the 'Services'). Users refers to a user who registers for an account with us for use of the Services, including both buyers and sellers (individually and collectively, “Users”, “you” or “your” We recognize the importance of the personal data you have entrusted to us and believe that it is our responsibility to properly manage, protect and process your personal data. This Privacy Policy (“Privacy Policy” or “Policy”) is designed to assist you in understanding how we collect, use, disclose and/or process the personal data you have provided to us and/or we possess about you, whether now or in the future, as well as to assist you in making an informed decision before providing us with any of your personal data. Please read this Privacy Policy carefully. If you have any questions regarding this information or our privacy practices, please see the section entitled 'Questions, Concerns or Complaints? Contact Us' at the end of this Privacy Policy.</p>
                                <p>1.2 'Personal Data' or 'personal data' means data, whether true or not, about an individual who can be identified from that data, or from that data and other information to which an organisation has or is likely to have access. Common examples of personal data could include name, identification number and contact information.</p>
                                <p>1.3 By using the Services, registering for an account with us, visiting our Platfrom, or accessing the Services, you acknowledge and agree that you accept the practices, requirements, and/or policies outlined in this Privacy Policy, and you hereby consent to us collecting, using, disclosing and/or processing your personal data as described herein. IF YOU DO NOT CONSENT TO THE PROCESSING OF YOUR PERSONAL DATA AS DESCRIBED IN THIS PRIVACY POLICY, PLEASE DO NOT USE OUR SERVICES OR ACCESS OUR PLATFORM. If we change our Privacy Policy, we will notify you including by posting those changes or the amended Privacy Policy on our Platform. We reserve the right to amend this Privacy Policy at any time. To the fullest extent permissible under applicable law, your continued use of the Services or Platform, including placing of any orders, shall constitute your acknowledgement and acceptance of the changes made to this Privacy Policy.</p>
                                <p>1.4 This Policy applies in conjunction with other notices, contractual clauses, consent clauses that apply in relation to the collection, storage, use, disclosure and/or processing of your personal data by us and is not intended to override those notices or clauses unless we state expressly otherwise.</p>
                                <p>1.5 This Policy applies to both buyers and sellers who use the Services except where expressly stated otherwise.</p>
                            ",
                            BM: "
                                <p>1.1. Selamat datang ke Nightcat Digital Solutions (JM0919865-V) platform yang diuruskan oleh Nightcat Digital Solutions (JM0919865-V) Southeast Asia Limited and syarikat-syarikat bersekutunya (secara individu dan secara kolektif, “Nightcat Digital Solutions (JM0919865-V)” atau “kami”). Nightcat Digital Solutions (JM0919865-V) mengambil tanggungjawabnya di bawah undang-undang dan peraturan privasi yang berkenaan ('Undang-undang Privasi') dengan serius dan komited untuk menghormati hak privasi dan kebimbangan semua Pengguna laman sesawang dan aplikasi telefon bibit Nightcat Digital Solutions (JM0919865-V) kami ('Platform') (kami merujuk kepada laman dan perkhidmatan yang diberikan seperti yang diterangkan di dalam Platform kami secara kolektif sebagai 'Perkhidmatan'). Pengguna adalah dirujuk sebagai pengguna yang mendaftar untuk akaun dengan kami untuk mengguna Perkhidmatan tersebut, termasuk pembeli dan penjual ('sebagai individu dan bersama, 'Pengguna', atau 'anda'. Kami memahami kepentingan data peribadi yang anda telah diamanahkan kepada kami dan mempercayai adalah tanggungjawab kami untuk mengurus, melindungi dan memproses data peribadi anda. Dasar Privasi ini ('Dasar Privasi' atau 'Dasar') direka untuk membantu anda memahami bagaimana kami mengumpul, menggunakan, mendedahkan atau memproses data peribadi yang telah anda berikan kepada kami dan/atau yang kami proses berkenaan dengan anda, samada sekarang atau di masa depan, serta membantu anda dalam membuat keputusan yang tepat sebelum memberikan kami data peribadi anda. </p>
                                <p>1.2. 'Data Peribadi' atau 'data peribadi' bermaksud data, sama ada benar atau tidak, mengenai individu yang boleh dikenalpasti daripada data itu, atau dari data dan maklumat lain yang mana sesebuah organisasi mempunyai akses atau mungkin mempunyai akses. Contoh data peribadi termasuk nama, nombor kad pengenalan dan maklumat untuk berhubung.</p>
                                <p>1.3. Dengan menggunakan Perkhidmatan, mendaftar akaun dengan kami, melawat Platform kami, atau mengakses Perkhidmatan, anda mengakui dan bersetuju bahawa anda menerima amalan, keperluan dan/atau dasar yang dikemukakan dalam Dasar Privasi ini, dan dengan ini anda membenarkan kami untuk mengumpul, menggunakan, mendedahkan dan/atau memproses data peribadi anda seperti yang ditertera di sini. JIKA ANDA TIDAK BERSETUJU DENGAN PEMPROSESAN DATA PERIBADI ANDA SEPERTI DIHURAIKAN DALAM DASAR PRIVASI INI, SILA JANGAN MENGGUNAKAN PERKHIDMATAN KAMI ATAU AKSES PLATFORM SESAWANG KAMI. Sekiranya kami mengubah Dasar Privasi kami, kami akan memaparkan perubahan atas Dasar Privasi tersebut kepada anda termasuk pindaan di Platform kami. Kami berhak untuk meminda Dasar Privasi ini pada bila-bila masa. Sejauh yang diizinkan berdasarkan undang-undang, penggunaan Perkhidmatan atau Platform oleh anda secara berterusan, termasuk membuat apa-apa pesanan, merupakan pengakuan dan penerimaan anda terhadap perubahan yang dibuat pada Dasar Privasi ini.</p>
                                <p>1.4 Dasar Privasi ini terpakai bersama notis-notis, klausa kontrak, klausa persetujuan lain yang berkaitan dengan pengumpulan, penyimpanan, penggunaan, pendedahan dan/atau pemprosesan data peribadi anda oleh kami dan tidak bertujuan untuk mengatasi notis atau klausa tersebut melainkan kami menyatakan dengan jelas sebaliknya.</p>
                                <p>1.5 Dasar Privasi ini terpakai untuk pembeli dan penjual yang menggunakan Perkhidmatan kecuali yang dinyatakan sebaliknya.</p>
                            ",
                            CN: "
                                <p>1.1 欢迎来到由 Nightcat Digital Solutions (JM0919865-V) 东南亚有限公司及其关联公司（单独和统称为“Nightcat Digital Solutions (JM0919865-V)”、“我们”、“我们”或“我们的”）运营的 Nightcat Digital Solutions (JM0919865-V) 平台。Nightcat Digital Solutions (JM0919865-V) 认真对待适用的隐私法律和法规（“隐私法”）下的责任，并致力于尊重我们 Nightcat Digital Solutions (JM0919865-V) 网站和移动应用程序（“平台”）（我们指平台和我们在平台上提供的服务统称为“服务”）。用户是指在我们这里注册帐户以使用服务的用户，包括买家和卖家（单独和统称“用户”、“您”或“您的”）。我们认识到您委托给我们的个人数据的重要性，并相信妥善管理、保护和处理您的个人数据是我们的责任。本隐私政策（“隐私政策”或“政策”）旨在帮助您了解我们如何收集、使用、披露和/或处理您提供给我们和/或我们拥有的关于您的个人数据，无论是现在还是将来，以及在向我们提供您的任何个人数据之前帮助您做出明智的决定。</p>
                                <p>1.2 “个人数据”或“个人数据”是指关于可以从该数据或该数据和组织已经或可能可以访问的其他信息中识别出的个人的数据，无论是否真实。个人数据的常见示例可能包括姓名、身份证号码和联系信息。</p>
                                <p>1.3 通过使用服务、在我们这里注册帐户、访问我们的平台或访问服务，您承认并同意您接受本隐私政策中概述的做法、要求和/或政策，并且您在此同意我们收集、使用、披露和/或处理您的个人数据，如本文所述。如果您不同意按照本隐私政策中的描述处理您的个人数据，请不要使用我们的服务或访问我们的平台。如果我们更改隐私政策，我们将通知您，包括在我们的平台上发布这些更改或修订后的隐私政策。我们保留随时修改本隐私政策的权利。在适用法律允许的最大范围内，您继续使用服务或平台，包括下任何订单，</p>
                                <p>1.4 本政策与适用于我们收集、存储、使用、披露和/或处理您的个人数据的其他通知、合同条款、同意条款一起适用，并且无意覆盖这些通知或条款，除非我们另有说明。</p>
                                <p>1.5 本政策适用于使用服务的买卖双方，除非另有明确说明</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "When Will NightCat Collect Personal Data?",
                            BM: "BILAKAH Nightcat Digital Solutions (JM0919865-V) MENGUMPUL DATA PERIBADI?",
                            CN: "Nightcat Digital Solutions (JM0919865-V) 何时会收集个人数据？"
                        }
                        description: {
                            EN: "
                                <p>2.1 We will/may collect personal data about you:</p>
                                <ol type='a'>
                                    <li>When you register and/or use our Services or Platform, or open an account with us</li>
                                    <li>When you submit any form, including, but not limited to, application forms or other forms relating to any of our products and services, whether online or by way of a physical formhen you submit any form, including, but not limited to, application forms or other forms relating to any of our products and services, whether online or by way of a physical form</li>
                                    <li>When you enter into any agreement or provide other documentation or information in respect of your interactions with us, or when you use our products and services</li>
                                    <li>When you interact with us, such as via telephone calls (which may be recorded), letters, fax, face-to-face meetings, social media platforms and emails, , including when you interact with our customer service agents</li>
                                    <li>When you use our electronic services or interact with us via our application or use services on our website. This includes, without limitation, through cookies which we may deploy when you interact with our application or website</li>
                                    <li>When you grant permissions on your device to share information with our application or Platform</li>
                                    <li>When you link your Nightcat account with your social media or other external account or use other social media features, in accordance with the provider’s policies</li>
                                    <li>When you carry out transactions through our Services</li>
                                    <li>When you provide us with feedback or complaints</li>
                                    <li>When you register for a contest or</li>
                                    <li>When you submit your personal data to us for any reason.</li>
                                </ol>
                                <p>The above does not purport to be exhaustive and sets out some common instances of when personal data about you may be collected. </p>
                            ",
                            BM: "
                                <p>2.1 Kami akan/mungkin mengumpul data peribadi mengenai anda:</p>
                                <ol type='a'>
                                    <li>apabila anda mendaftar dan/atau menggunakan Perkhidmatan atau Platform kami atau membuka akaun dengan kami;</p>
                                    <li>apabila anda menghantar apa-apa borang, termasuk, tetapi tidak terhad kepada, borang permohonan atau borang lain yang berkaitan dengan produk dan perkhidmatan kami, sama ada atas talian atau melalui berbentuk fizikal;</p>
                                    <li>apabila anda memasuki perjanjian atau dokumentasi atau maklumat lain berkenaan dengan interaksi anda dengan kami, atau apabila anda menggunakan produk dan perkhidmatan kami;</p>
                                    <li>apabila anda berinteraksi dengan kami, seperti melalui panggilan telefon (yang mungkin dirakam), surat, faks, mesyuarat bersemuka, platform media sosial dan e-mel;</p>
                                    <li>apabila anda menggunakan perkhidmatan elektronik kami, atau berinteraksi dengan kami menerusi aplikasi atau Perkhidmatan kami di Platform kami. Ini termasuk, tanpa had, melalui “cookies” yang boleh kami gunakan apabila anda berinteraksi dengan aplikasi atau tapak web kami;</p>
                                    <li>apabila anda memberi keizinan pada peranti anda untuk berkongsi maklumat dengan aplikasi atau Platform kami.</p>
                                    <li>apabila anda menghubungkan akaun Nightcat Digital Solutions (JM0919865-V) anda dengan laman media sosial atau akaun luaran lain atau menggunakan ciri-ciri laman media sosial lain yang bersesuaian dengan dasar penyedia tersebut;</p>
                                    <li>apabila anda melakukan transaksi melalui Perkhidmatan kami;</p>
                                    <li>apabila anda memberikan maklum balas atau aduan kepada kami;</p>
                                    <li>apabila anda mendaftar untuk pertandingan; atau</p>
                                    <li>apabila anda menyerahkan data peribadi anda kepada kami untuk apa-apa sebab.</p>
                                </ol>
                                <p>Contoh-contoh di atas adalah tidak menyeluruh dan ia menetapkan beberapa contoh-contoh biasa apabila data peribadi tentang anda boleh dikumpulkan.</p>
                            ",
                            CN: "
                                <p>2.1我们将/可能会收集关于您的个人数据</p>
                                <ol type='a'>
                                    <li>当您注册和/或使用我们的服务或平台，或在我们开立账户时；</li>
                                    <li>当您提交任何表格时，包括但不限于申请表格或与我们的任何产品和服务相关的其他表格，无论是在线还是通过实体表格；</li>
                                    <li>当您就您与我们的互动或使用我们的产品和服务订立任何协议或提供其他文件或信息时；</li>
                                    <li>当您与我们互动时，例如通过电话（可能被录音）、信件、传真、面对面会议、社交媒体平台和电子邮件，包括与我们的客户服务代理互动时；</li>
                                    <li>当您使用我们的电子服务，或通过我们的应用程序与我们互动或使用我们平台上的服务时。这包括但不限于通过我们可能在您与我们的应用程序或网站交互时部署的 cookie；</li>
                                    <li>当您在您的设备上授予与我们的应用程序或平台共享信息的权限时</li>
                                    <li>当您根据提供商的政策将您的 Nightcat Digital Solutions (JM0919865-V) 帐户与您的社交媒体或其他外部帐户关联或使用其他社交媒体功能时；</li>
                                    <li>当您通过我们的服务进行交易时；</li>
                                    <li>当您向我们提供反馈或投诉时；</li>
                                    <li>当您注册比赛时；或者</li>
                                    <li>当您出于任何原因向我们提交您的个人数据</li>
                                </ol>
                                <p>上述内容并非详尽无遗，而是列出了可能收集有关您的个人数据的一些常见情况。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "What Personal Data Will NightCat Collect?"
                            BM: "APAKAH DATA PERIBADI YANG Nightcat Digital Solutions (JM0919865-V) KUMPUL?",
                            CN: "购物者将收集哪些个人数据？"
                        }
                        description: {
                            EN: "
                                <p>3.1 The personal data that Nightcat may collect includes but is not limited to:</p>
                                <ul>
                                    <li>Name</li>
                                    <li>Email address</li>
                                    <li>Date of birth</li>
                                    <li>Billing and/or delivery address</li>
                                    <li>Bank account and payment information</li>
                                    <li>Telephone number</li>
                                    <li>Gender</li>
                                    <li>Information sent by or associated with the device(s) used to access our Services or Platform</li>
                                    <li>Information about your network and the people and accounts you interact with</li>
                                    <li>Photographs or audio or video recordings that you share with us</li>
                                    <li>Government issued identification or other information required for our due diligence, know your customer, identity verification, or fraud prevention purposes</li>
                                    <li>Marketing and communications data, such as your preferences in receiving marketing from us and third parties, your communication preferences and history of communications with us, our service providers, and other third parties</li>
                                    <li>Usage and transaction data, including details about your searches, orders, the advertising and content you interact with on the Platform and other products and services related to you
                                    Location data</li>
                                    <li>Any other information about the User when the User signs up to use our Services or Platform, and when the User uses the Services or Platform, as well as information related to how the User uses our Services or Platform and</li>
                                    <li>Aggregate data on content the User engages with</li>
                                </ul>
                                <p>3.2 You agree not to submit any information to us which is inaccurate or misleading, and you agree to inform us of any inaccuracies or changes to such information. We reserve the right at our sole discretion to require further documentation to verify the information provided by you.</p>
                                <p>3.3 If you sign up to be a user of our Platform using your social media account (“Social Media Account”), link your Nightcat account to your Social Media Account or use any Nightcat social media features, we may access information about you which you have voluntarily provided to your Social Media Account provider in accordance with such provider's policies, and we will manage and use any such personal data in accordance with this Policy at all times.</p>
                                <p>3.4 If you do not want us to collect the aforementioned information/personal data, you may opt out at any time by notifying our Data Protection Officer in writing about it. Further information on opting out can be found in the section below entitled 'How can you opt-out, remove, request access to or modify information you have provided to us?'.</p>
                                <p>Note, however, that opting out of us collecting your personal data or withdrawing your consent for us to collect, use or process your personal data may affect your use of the Services. For example, opting out of the collection of location information will cause its location-based features to be disabled.</p>
                            "
                            BM: "
                                <p>3.1 Data peribadi yang boleh dikumpulkan oleh Nightcat Digital Solutions (JM0919865-V) termasuk tetapi tidak terhad kepada:</p>
                                <ul>
                                    <li>nama;</li>
                                    <li>alamat emel;</li>
                                    <li>tarikh lahir;</li>
                                    <li>bill and/atau alamat penyampaian;</li>
                                    <li>akaun bank dan maklumat pembayaran;</li>
                                    <li>nombor telefon;</li>
                                    <li>jantina;</li>
                                    <li>maklumat yang dihantar oleh/atau berkaitan dengan peranti-peranti yang digunakan untuk mengakses Perkhidmatan atau Platform kami;</li>
                                    <li>maklumat mengenai rangkaian anda, dan orang dan akaun yang anda berinteraksi;</li>
                                    <li>gambar atau rakaman audio atau video;</li>
                                    <li>pengenalan yang dikeluarkan oleh kerajaan atau maklumat lain yang diperlukan untuk usaha wajar (‘due diligence’), mengenali pelanggan (‘know-your-customer’), pengesahan identiti, atau tujuan pencegahan penipuan;data pemasaran dan komunikasi seperti pilihan anda dalam menerima pemasaran daripada kami dan pihak ketiga, pilihan komunikasi anda dan sejarah komunikasi dengan kami, penyedia perkhidmatan kami dan pihak ketiga yang lain;</li>
                                    <li>data penggunaan dan transaksi, termasuk maklumat mengenai carian anda, pesanan, pengiklanan dan kandungan yang anda interaksi di Platform dan produk dan perkhidmatan lain yang berkaitan dengan anda;</li>
                                    <li>data lokasi; </li>
                                    <li>apa-apa maklumat lain mengenai Pengguna apabila Pengguna mendaftar untuk menggunakan Perkhidmatan atau Platform kami dan apabila Pengguna menggunakan Perkhidmatan atau Platform serta maklumat yang berkaitan dengan cara Pengguna menggunakan Perkhidmatan atau Platform; dan</li>
                                    <li>data agregat pada kandungan yang digunakan oleh Pengguna.</li>
                                </ul>
                                <p>3.2 Anda bersetuju untuk tidak menyerahkan maklumat kepada kami yang tidak tepat atau mengelirukan, dan anda bersetuju untuk memberitahu kami mengenai ketidaktepatan atau perubahan maklumat tersebut. Kami berhak mengikut budi bicara kami sendiri untuk meminta dokumentasi lebih lanjut untuk mengesahkan maklumat yang diberikan oleh anda.</p>
                                <p>3.3 Sekiranya anda mendaftar untuk menjadi pengguna Platform kami dengan menggunakan akaun media sosial anda ('Akaun Media Sosial'), tautkan akaun Nightcat Digital Solutions (JM0919865-V) anda ke Akaun Media Sosial anda atau gunakan sebarang ciri media sosial Nightcat Digital Solutions (JM0919865-V), kami mungkin mengakses maklumat mengenai anda yang anda miliki secara sukarela diberikan kepada pembekal Akaun Media Sosial anda mengikut dasar penyedia tersebut, dan kami akan mengurus dan menggunakan data peribadi tersebut sesuai dengan Polisi ini pada setiap masa.</p>
                                <p>3.4 Sekiranya anda tidak mahu kami mengumpul data / data peribadi yang dinyatakan di atas, anda boleh memilih untuk menarik diri pada bila-bila masa dengan memberitahu Pegawai Perlindungan Data kami secara bertulis. Maklumat lanjut tentang memilih keluar boleh didapati di bahagian di bawah bertajuk 'Bagimana anda boleh menarik balik kebenaran, meminta akses kepada atau membetulkan maklumat yang telah anda berikan kepada kami?'. Walau bagaimanapun, sila ambil perhatian bahawa pemilihan anda untuk menarik diri atau menarik balik kebenaran anda untuk kami mengumpul, menggunakan atau memproses data peribadi anda boleh menjejaskan penggunaan Perkhidmatan dan Platform oleh anda. Sebagai contoh, menarik diri daripada pengumpulan maklumat lokasi akan menyebabkan ciri-ciri berdasarkan lokasi akan dimatikan.</p>
                            ",
                            CN: "
                                <p>3.1 虾皮可能收集的个人资料包括但不限于：</p>
                                <ul>
                                    <li>名称; </li>
                                    <li>电子邮件地址; </li>
                                    <li>出生日期; </li>
                                    <li>帐单和/或送货地址； </li>
                                    <li>银行账户和付款信息； </li>
                                    <li>电话号码; 
                                    <li>性别; </li>
                                    <li>由用于访问我们的服务或平台的设备发送或与之相关的信息； </li>
                                    <li>有关您的网络以及与您互动的人员和帐户的信息；</li>
                                    <li>照片或音频或视频记录；</li>
                                    <li>政府签发的身份证明或我们尽职调查、了解您的客户、身份验证或欺诈预防目的所需的其他信息； </li>
                                    <li>营销和通信数据，例如您在接收我们和第三方的营销信息时的偏好、您的通信偏好以及与我们、我们的服务提供商和其他第三方的通信历史； </li>
                                    <li>使用和交易数据，包括有关您的搜索、订单、您在平台上互动的广告和内容以及与您相关的其他产品和服务的详细信息；</li>
                                    <li>位置数据；</li>
                                    <li>用户注册使用我们的服务或平台时以及用户使用服务或平台时有关用户的任何其他信息，以及与用户如何使用我们的服务或平台有关的信息；和 </li>
                                    <li>汇总用户参与内容的数据。</li>
                                </ul>
                                <p>3.2 您同意不向我们提交任何不准确或具有误导性的信息，并且您同意将此类信息的任何不准确或更改通知我们。我们保留自行决定要求提供进一步文件以验证您提供的信息的权利。 </p>
                                <p>3.3 如果您使用您的社交媒体帐户（“社交媒体帐户”）注册成为我们平台的用户，将您的 Nightcat Digital Solutions (JM0919865-V) 帐户链接到您的社交媒体帐户或使用任何 Nightcat Digital Solutions (JM0919865-V) 社交媒体功能，我们可能会访问您的信息已根据此类提供商的政策自愿提供给您的社交媒体帐户提供商，我们将始终按照本政策管理和使用任何此类个人数据。 </p>
                                <p>3.4 如果您不希望我们收集上述信息/个人数据，您可以随时以书面形式通知我们的数据保护官选择退出。有关选择退出的更多信息，请参见下面标题为“您如何撤回同意、请求访问或更正您提供给我们的信息？”的部分。. 但请注意，选择退出或撤回您对我们收集、使用或处理您的个人数据的同意可能会影响您对服务和平台的使用。例如，选择退出位置信息收集将导致其基于位置的功能被禁用。 </p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Collection Of Other Data",
                            BM: "PENGUMPULAN DATA LAIN-LAIN",
                            CN: "其他数据的收集"
                        }
                        description: {
                            EN: "
                                <p>4.1 As with most websites and mobile applications, your device sends information which may include data about you that gets logged by a web server when you browse our Platform. This typically includes without limitation your device’s Internet Protocol (IP) address, computer/mobile device operating system and browser type, type of mobile device, the characteristics of the mobile device, the unique device identifier (UDID) or mobile equipment identifier (MEID) for your mobile device, the address of a referring web site (if any), the pages you visit on our website and mobile applications and the times of visit, and sometimes a 'cookie' (which can be disabled using your browser preferences) to help the site remember your last visit. If you are logged in, this information is associated with your personal account. The information is also included in anonymous statistics to allow us to understand how visitors use our site.</p>
                                <p>4.2 Our mobile applications may collect precise information about the location of your mobile device using technologies such as GPS, Wi-Fi, etc. We collect, use, disclose and/or process this information for one or more Purposes including, without limitation, location-based services that you request or to deliver relevant content to you based on your location or to allow you to share your location to other Users as part of the services under our mobile applications. For most mobile devices, you are able to withdraw your permission for us to acquire this information on your location through your device settings. If you have questions about how to disable your mobile device's location services, please contact your mobile device service provider or the device manufacturer.</p>
                                <p>4.3 As when you view pages on our website or mobile application, when you watch content and advertising and access other software on our Platform or through the Services, most of the same information is sent to us (including, without limitation, IP Address, operating system, etc.); but, instead of page views, your device sends us information on the content, advertisement viewed and/or software installed by the Services and the Platform and time.</p>
                            ",
                            BM: "
                                <p>4.1 Seperti kebanyakan laman web dan aplikasi mudah alih, peranti anda menghantar maklumat yang mungkin merangkumi data mengenai anda yang dicatat oleh pelayan web semasa anda melayari Platform kami. Ini biasanya merangkumi tanpa had alamat Protokol Internet (IP) peranti anda, sistem operasi komputer / peranti mudah alih dan jenis penyemak imbas, jenis peranti mudah alih, ciri-ciri peranti mudah alih, pengecam peranti unik (UDID) atau pengecam peralatan mudah alih (MEID) untuk peranti mudah alih anda, alamat laman web rujukan (jika ada), halaman yang anda lawati di laman web dan aplikasi mudah alih kami dan masa lawatan, dan kadang-kadang 'cookie' (yang boleh dilumpuhkan menggunakan pilihan penyemak imbas anda) untuk bantu laman web ini mengingati lawatan terakhir anda. Sekiranya anda log masuk, maklumat ini dikaitkan dengan akaun peribadi anda. Maklumat tersebut juga disertakan dalam statistik tanpa nama untuk membolehkan kita memahami bagaimana pelawat menggunakan laman web kami.</p>
                                <p>4.2 Aplikasi mudah alih kami mungkin mengumpulkan maklumat tepat mengenai lokasi peranti mudah alih anda menggunakan teknologi seperti GPS, Wi-Fi, dll. Kami mengumpulkan, menggunakan, mendedahkan dan / atau memproses maklumat ini untuk satu atau lebih Tujuan termasuk, tanpa batasan, lokasi - perkhidmatan berdasarkan yang anda minta atau untuk menyampaikan kandungan yang relevan kepada anda berdasarkan lokasi anda atau untuk membolehkan anda berkongsi lokasi anda kepada Pengguna lain sebagai sebahagian daripada perkhidmatan di bawah aplikasi mudah alih kami. Untuk kebanyakan peranti mudah alih, anda dapat menarik balik kebenaran anda untuk kami memperoleh maklumat ini di lokasi anda melalui tetapan peranti anda. Sekiranya anda mempunyai pertanyaan tentang cara menonaktifkan perkhidmatan lokasi peranti mudah alih anda, hubungi penyedia perkhidmatan peranti mudah alih atau pengeluar peranti anda.</p>
                                <p>4.3 Seperti ketika anda melihat halaman di laman web atau aplikasi mudah alih kami, ketika anda menonton kandungan dan iklan dan mengakses perisian lain di Platform kami atau melalui Perkhidmatan, kebanyakan maklumat yang sama dikirimkan kepada kami (termasuk, tanpa batasan, Alamat IP, operasi sistem, dll); tetapi, bukannya paparan halaman, peranti anda menghantar kami maklumat mengenai kandungan, iklan yang dilihat dan / atau perisian yang dipasang oleh Perkhidmatan dan Platform dan masa.</p>
                            ",
                            CN: "
                                <p>4.1 与大多数网站和移动应用程序一样，您的设备会发送信息，其中可能包括在您浏览我们的平台时由网络服务器记录的有关您的数据。这通常包括但不限于您设备的互联网协议 (IP) 地址、计算机/移动设备操作系统和浏览器类型、移动设备类型、移动设备的特性、唯一设备标识符 (UDID) 或移动设备标识符 (MEID)对于您的移动设备、推荐网站的地址（如果有）、您在我们网站和移动应用程序上访问的页面以及访问时间，有时还有“cookie”（可以使用您的浏览器首选项禁用）以帮助网站记住您的上次访问。如果您已登录，则此信息与您的个人帐户相关联。 </p>
                                <p>4.2 我们的移动应用程序可能会使用 GPS、Wi-Fi 等技术收集有关您移动设备位置的精确信息。我们出于一个或多个目的收集、使用、披露和/或处理此信息，包括但不限于位置您请求或根据您的位置向您提供相关内容或允许您将您的位置分享给其他用户的服务，作为我们移动应用程序下服务的一部分。对于大多数移动设备，您可以通过您的设备设置撤回您对我们获取您的位置信息的许可。如果您对如何禁用移动设备的定位服务有任何疑问，请联系您的移动设备服务提供商或设备制造商。 </p>
                                <p>4.3 当您在我们的网站或移动应用程序上查看页面时，当您在我们的平台上或通过服务观看内容和广告以及访问其他软件时，大部分相同的信息都会发送给我们（包括但不限于 IP 地址、操作系统等）；但是，您的设备向我们发送有关内容、广告和/或服务和平台安装的软件以及时间的信息，而不是页面浏览量。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Cookies",
                            BM: "Cookies",
                            CN: "饼干"
                        }
                        description: {
                            EN: "
                                <p>5.1 We or our authorised service providers and advertising partners may from time to time use 'cookies' or other features to allow us or third parties to collect or share information that in connection with your use of our Services or Platform. These features help us improve our Platform and the Services we offer, help us offer new services and features, and/or enable us and out advertising partners serve more relevant content to you, including through remarketing. “Cookies” are identifiers that are stored on your computer or device that record data about your computer or device and how and when the Services or website are used or visited, by how many people and other activity within our Platform. We may link cookie information to personal data. Cookies also link to information regarding what items you have selected for purchase and web pages you have viewed. This information is used to keep track of your shopping cart, to deliver content specific to your interests, to enable our third party advertising partners to serve advertisements o sites across the internet and to conduct data analysis and to monitor usage of the Services.</p>
                                <p>5.2 You may refuse the use of cookies by selecting the appropriate settings on your browser or device. However, please note that if you do this you may not be able to use the full functionality of our Site or the Services.</p>
                            ",
                            BM: "
                                <p>5.1 Kami atau penyedia perkhidmatan dan rakan periklanan kami yang sah boleh dari semasa ke semasa menggunakan 'cookies' atau ciri lain untuk membolehkan kami atau pihak ketiga mengumpulkan atau berkongsi maklumat yang berkaitan dengan penggunaan Perkhidmatan atau Platform kami oleh anda. Ciri-ciri ini membantu kami meningkatkan Platform dan Perkhidmatan yang kami tawarkan, atau membantu kami menawarkan perkhidmatan dan ciri baru, dan / atau membolehkan kami dan rakan pengiklanan melayani kandungan yang lebih relevan kepada anda, termasuk melalui pemasaran semula. 'Cookies' adalah pengecam yang disimpan di komputer atau peranti mudah alih anda yang merekodkan data mengenai komputer atau peranti mudah alih tersebut, bagaimana dan apabila Perkhidmatan atau Platform digunakan atau dikunjungi, oleh berapa banyak orang dan aktiviti lain dalam Platform kami. Kami mungkin menghubungkan maklumat “cookie” ke data peribadi. “Cookies” juga menghubungkan ke maklumat mengenai item apa yang telah anda pilih untuk pembelian dan halaman web yang telah anda lihat. Maklumat ini digunakan untuk melacak keranjang belanja anda, untuk menyampaikan kandungan khusus untuk minat anda, untuk membolehkan rakan pengiklanan pihak ketiga kami menayangkan iklan di laman web di internet dan melakukan analisis data dan untuk memantau penggunaan Perkhidmatan.</p>
                                <p>5.2 Anda boleh menolak penggunaan “cookies” dengan memilih tetapan yang sesuai pada penyemak imbas atau peranti anda. Walau bagaimanapun, harap maklum bahawa jika anda melakukan ini, anda mungkin tidak dapat menggunakan fungsi sepenuhnya Platform atau Perkhidmatan kami.</p>
                            ",
                            CN: "
                                <p>5.1 我们或我们的授权服务提供商和广告合作伙伴可能会不时使用“cookies”或其他功能，以允许我们或第三方收集或共享与您使用我们的服务或平台有关的信息。这些功能帮助我们改进我们的平台和我们提供的服务，帮助我们提供新的服务和功能，和/或使我们和我们的广告合作伙伴能够为您提供更相关的内容，包括通过再营销。“Cookie”是存储在您的计算机或移动设备上的标识符，用于记录有关计算机或移动设备的数据、服务或平台的使用方式和时间、我们平台内的人数和其他活动。我们可能会将 cookie 信息链接到个人数据。Cookie 还链接到有关您选择购买的商品和浏览过的网页的信息。该信息用于跟踪您的购物车、提供符合您兴趣的内容、使我们的第三方广告合作伙伴能够在互联网上的网站上投放广告、进行数据分析和监控服务的使用情况。 </p>
                                <p>5.2 您可以通过在浏览器或设备上选择适当的设置来拒绝使用 cookie。但是，请注意，如果您这样做，您可能无法使用我们平台或服务的全部功能。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "How Do We Use The Information You Provide Us?",
                            BM: "BAGAIMANA KITA MENGGUNAKAN MAKLUMAT YANG ANDA MEMBERIKAN KEPADA KAMI?",
                            CN: "我们如何使用您提供给我们的信息？"
                        }
                        description: {
                            EN: "
                                <p>6.1 We may collect, use, disclose and/or process your personal data for one or more of the following purposes:</p>
                                <ol type='a'>
                                    <li>To consider and/or process your application/transaction with us or your transactions or communications with third parties via the Services</li>
                                    <li>To manage, operate, provide and/or administer your use of and/or access to our Services and our website, as well as your relationship and user account with us</li>
                                    <li>To manage, operate, administer and provide you with as well as to facilitate the provision of our Services, including, without limitation, remembering your preferences</li>
                                    <li>To tailor your experience through the Services by displaying content according to your interests and preferences, providing a faster method for you to access your account and submit information to us and allowing us to contact you, if necessary</li>
                                    <li>To respond to, process, deal with or complete a transaction and/or to fulfil your requests for certain products and services and notify you of service issues and unusual account actions</li>
                                    <li>To enforce our Terms of Service or any applicable end user license agreements</li>
                                    <li>To protect personal safety and the rights, property or safety of others</li>
                                    <li>For identification , verification, due diligence or know your customer purposes</li>
                                    <li>To maintain and administer any software updates and/or other updates and support that may be required from time to time to ensure the smooth running of our Services</li>
                                    <li>To deal with or facilitate customer service, carry out your instructions, deal with or respond to any enquiries given by (or purported to be given by) you or on your behalf</li>
                                    <li>To contact you or communicate with you via voice call, text message and/or fax message, email and/or postal mail or otherwise for the purposes of administering and/or managing your relationship with us or your use of our Services, such as but not limited to communicating administrative information to you relating to our Services. You acknowledge and agree that such communication by us could be by way of the mailing of correspondence, documents or notices to you, which could involve disclosure of certain personal data about you to bring about delivery of the same as well as on the external cover of envelopes/mail packages</li>
                                    <li>To allow other users to interact connect with you or see some of your activities on the Platform, including to inform you when another User has sent you a private message or posted a comment for you on thePlatform or connected with you using the social features on the Platform</li>
                                    <li>To conduct research, analysis and development activities (including, but not limited to, data analytics, surveys, product and service development and/or profiling), to analyse how you use our Services, to recommend products and/or services relevant to your interest, to improve our Services or products and/or to enhance your customer experience</li>
                                    <li>To allow for audits and surveys to, among other things, validate the size and composition of our target audience, and understand their experience with Nightcat’s Services</li>
                                    <li>For marketing and advertising, and in this regard, to send you by various mediums and modes of communication marketing and promotional information and materials relating to products and/or services (including, without limitation, products and/or services of third parties whom Nightcat may collaborate or tie up with) that Nightcat (and/or its affiliates or related corporations) may be selling, marketing or promoting, whether such products or services exist now or are created in the future. You can unsubscribe from receiving marketing information at any time by using the unsubscribe function within the electronic marketing material. We may use your contact information to send newsletters or marketing materials from us and from our related companies</li>
                                    <li>To respond to legal processes or to comply with or as required by any applicable law, governmental or regulatory requirements of any relevant jurisdiction, or where we have a good faith belied that such disclosure is necessary including, without limitation, meeting the requirements to make disclosure under the requirements of any law binding on Nightcat or on its related corporations or affiliates (including where applicable, the display of your name, contact details and company details)</li>
                                    <li>To produce statistics and research for internal and statutory reporting and/or record-keeping requirements</li>
                                    <li>To carry out due diligence or other screening activities (including, without limitation, background checks) in accordance with legal or regulatory obligations or our risk management procedures that may be required by law or that may have been put in place by us</li>
                                    <li>To audit our Services or Nightcat's business</li>
                                    <li>To prevent or investigate any actual or suspected violations of our Terms of Service, fraud, unlawful activity, omission or misconduct, whether relating to your use of our Services or any other matter arising from your relationship with us</li>
                                    <li>To respond to any threatened or actual claims asserted against Nightcat or other claim that any Content violates the rights of third parties</li>
                                    <li>To store, host, back up (whether for disaster recovery or otherwise) of your personal data, whether within or outside of your jurisdiction</li>
                                    <li>To deal with and/or facilitate a business asset transaction or a potential business asset transaction, where such transaction involves Nightcat as a participant or involves only a related corporation or affiliate of Nightcat as a participant or involves Nightcat and/or any one or more of Nightcat's related corporations or affiliates as participant(s), and there may be other third party organisations who are participants in such transaction. A “business asset transaction” refers to the purchase, sale, lease, merger, amalgamation or any other acquisition, disposal or financing of an organisation or a portion of an organisation or of any of the business or assets of an organisation and/or</li>
                                    <li>Any other purposes which we notify you of at the time of obtaining your consent.</li>
                                </ol>
                                <p>(collectively, the “Purposes”).</p>
                                <p>6.2 You acknowledge, consent and agree that Nightcat may access, preserve and disclose your Account information and Content if required to do so by law or pursuant to an order of a court or by any governmental or regulatory authority having jurisdiction over Nightcat or in a good faith belief that such access preservation or disclosure is reasonably necessary to:</p>
                                <ul>
                                    <li>Comply with legal process</li>
                                    <li>Comply with a request from any governmental or regulatory authority having jurisdiction over Nightcat</li>
                                    <li>Enforce the Nightcat Terms of Service or this Privacy Policy</li>
                                    <li>Respond to any threatened or actual claims asserted against Nightcat or other claim that any Content violates the rights of third parties</li>
                                    <li>Respond to your requests for customer service or</li>
                                    <li>Protect the rights, property or personal safety of Nightcat, its users and/or the public.</li>
                                </ul>
                                <p>6.3 As the purposes for which we will/may collect, use, disclose or process your personal data depend on the circumstances at hand, such purpose may not appear above. However, we will notify you of such other purpose at the time of obtaining your consent, unless processing of the applicable data without your consent is permitted by the Privacy Laws.</p>
                            ",
                            BM: "
                                <p>6.1 Kami boleh mengumpul, menggunakan, mendedahkan dan / atau memproses data peribadi anda untuk satu atau lebih daripada tujuan berikut:</p>
                                <ol type='a'>
                                    <li>untuk mempertimbangkan dan/atau memproses permohonan/transaksi anda dengan kami atau transaksi atau komunikasi anda dengan pihak ketiga melalui Perkhidmatan;</li>
                                    <li>untuk mengurus, mengendali, menyediakan dan/atau mentadbir penggunaan dan/atau akses anda kepada Perkhidmatan kami dan Platform kami (termasuk, tanpa batasan, mengingati pilihan anda), serta hubungan dan akaun pengguna anda dengan kami;</li>
                                    <li>ntuk bertindak balas, memproses, menangani atau menyelesaikan transaksi dan/atau memenuhi permintaan anda untuk produk dan perkhidmatan tertentu dan memaklumkan kepada anda tentang isu-isu perkhidmatan dan pergerakan akaun yang luar biasa;</li>
                                    <li>ntuk menguatkuasakan Syarat Perkhidmatan kami atau mana-mana perjanjian lesen pengguna akhir yang berkenaan;</li>
                                    <li>untuk melindungi keselamatan diri dan hak-hak, harta atau keselamatan orang lain;</li>
                                    <li>untuk pengenalpastian, pengesahan, usaha wajar (‘due diligence’), atau mengenali tujuan pelanggan (‘know-your-customer’);</li>
                                    <li>untuk menilai dan membuat keputusan mengenai profil kredit dan risiko anda dan kelayakan untuk produk-produk kredit;</li>
                                    <li>untuk mengekalkan dan mentadbir sebarang kemas kini perisian dan/atau kemas kini dan sokongan lain yang mungkin diperlukan dari semasa ke semasa untuk memastikan kelancaran Perkhidmatan kami;</li>
                                    <li>untuk menangani atau memudahkan perkhidmatan pelanggan, menjalankan arahan anda, berurusan dengan atau menjawab apa-apa pertanyaan yang diberikan oleh (atau kononnya diberikan oleh) anda atau bagi pihak anda;</li>
                                    <li>untuk menghubungi anda atau berkomunikasi dengan anda melalui panggilan suara, mesej teks dan/atau mesej faks, e-mel dan/atau mel pos atau sebaliknya untuk tujuan mentadbirkan dan/atau menguruskan hubungan anda dengan kami atau penggunaan Perkhidmatan kami, seperti tetapi tidak terhad kepada menyampaikan maklumat pentadbiran kepada anda yang berkaitan dengan Perkhidmatan kami. Anda mengakui dan bersetuju bahawa komunikasi sedemikian oleh kami boleh melalui surat-menyurat, dokumen atau notis kepada anda, yang mungkin melibatkan pendedahan data peribadi tertentu mengenai anda untuk membawa penyampaian yang sama serta pada penutup luaran sampul/pakej mel;</li>
                                    <li>untuk membenarkan pengguna lain untuk berkomunikasi, berhubung dengan anda atau melihat aktiviti anda di Platform, termasuk untuk memaklumkan kepada anda apabila Pengguna lain telah menghantar mesej peribadi kepada anda, menyiarkan komen untuk anda di Platform atau menghubung dengan anda menggunakan ciri-ciri social di Platform;</li>
                                    <li>untuk menjalankan aktiviti penyelidikan, analisis dan pembangunan (termasuk, tetapi tidak terhad kepada, analitik data, tinjauan, pembangunan dan/atau pemprofilan produk dan perkhidmatan), untuk menganalisis bagaimana anda menggunakan Perkhidmatan kami, untuk mengesyorkan produk dan/atau perkhidmatan yang relevan dengan minat anda, untuk meningkatkan Perkhidmatan atau produk kami dan/atau untuk meningkatkan pengalaman pelanggan anda;</li>
                                    <li>untuk membolehkan audit dan kaji selidik untuk, antara lain, mengesahkan saiz dan komposisi penonton sasaran kami, dan memahami pengalaman mereka dengan Perkhidmatan Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>untuk pemasaran dan pengiklanan, dalam hal ini, untuk menghantar kepada anda melalui pelbagai medium dan kaedah komunikasi maklumat pemasaran dan promosi dan bahan-bahan yang berkaitan dengan produk dan/atau perkhidmatan (termasuk, tanpa batasan, produk dan/atau perkhidmatan pihak ketiga yang mana Nightcat Digital Solutions (JM0919865-V) mungkin bekerjasama atau menjalinkan hubungan) yang Nightcat Digital Solutions (JM0919865-V) (dan/atau sekutunya atau syarikat yang berkaitan) mungkin akan menjual, memasarkan atau mempromosikan, sama ada produk atau perkhidmatan semasa atau dicipta pada masa depan. Anda boleh berhenti melanggan daripada menerima maklumat pemasaran pada bila-bila masa dengan menggunakan fungsi berhenti melanggan dalam bahan-bahan pengiklanan elektronik. Kami mungkin akan menggunakan maklumat perhubungan anda untuk menghantar buletin atau bahan pemasaran daripada kami dan syarikat kami yang berkaitan;</li>
                                    <li>untuk bertindak balas terhadap proses perundangan atau mematuhi atau sebagaimana yang dikehendaki oleh mana-mana undang-undang yang terpakai, kehendak kerajaan atau pengawalseliaan mana-mana bidang kuasa yang berkaitan, atau di mana kami percaya bahawa pendedahan sedemikian adalah diperlukan, termasuk, tanpa batasan, memenuhi keperluan untuk membuat penzahiran di bawah kehendak mana-mana undang-undang yang mengikat pada Nightcat Digital Solutions (JM0919865-V) dan/atau sekutunya atau syarikat yang berkaitan (termasuk, jika berkenaan, dengan memaparkan nama, maklumat perhubungan dan maklumat syarikat anda);</li>
                                    <li>untuk menghasilkan statistik dan penyelidikan untuk pelaporan dalaman dan berkanun dan/atau keperluan penyimpanan rekod;</li>
                                    <li>untuk menjalankan usaha wajar (‘due diligence’) atau aktiviti pemeriksaan lain (termasuk, tanpa batasan, pemeriksaan latar belakang) mengikut kewajipan undang-undang atau pengawalseliaan atau prosedur pengurusan risiko yang mungkin diperlukan oleh undang-undang atau yang mungkin telah disediakan oleh kami;</li>
                                    <li>untuk mengaudit Perkhidmatan atau perniagaan Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>untuk mencegah atau menyiasat sebarang pelanggaran Syarat Perkhidmatan, penipuan, aktiviti yang menyalahi undang-undang, kecuaian atau salah laku, sama ada berkaitan dengan penggunaan Perkhidmatan kami oleh anda atau apa-apa perkara lain yang timbul daripada hubungan anda dengan kami;</li>
                                    <li>untuk bertindak balas terhadap tuntutan yang diancam atau tuntutan sebenar yang diajukan terhadap Nightcat Digital Solutions (JM0919865-V) atau tuntutan lain bahawa mana-mana Kandungan melanggar hak pihak ketiga</li>
                                    <li>menyimpan, menganjurkan, menyandarkan (sama ada untuk pemulihan bencana atau sebaliknya) data peribadi anda, sama ada di dalam atau di luar bidang kuasa anda;</li>
                                    <li>untuk menangani dan/atau memudahkan transaksi aset perniagaan atau transaksi aset perniagaan yang berpotensi, di mana transaksi tersebut melibatkan Nightcat Digital Solutions (JM0919865-V) sebagai peserta atau hanya melibatkan perbadanan atau sekutu Nightcat Digital Solutions (JM0919865-V) sebagai peserta atau melibatkan Nightcat Digital Solutions (JM0919865-V) dan/atau mana-mana satu atau lebih daripada satu syarikat pegangan, subsidiari atau berkaitan dengan Nightcat Digital Solutions (JM0919865-V) sebagai peserta, dan mungkin terdapat organisasi pihak ketiga yang lain yang terlibat dalam transaksi tersebut. 'Urus niaga perniagaan' merujuk kepada pembelian, penjualan, pajakan, penggabungan atau sebarang pengambilalihan, pelupusan atau pembiayaan lain organisasi atau sebahagian organisasi atau mana-mana perniagaan atau aset sesuatu organisasi; dan/atau</li>
                                    <li>apa-apa tujuan lain yang kami maklumkan kepada anda semasa mendapatkan persetujuan anda.</li>
                                </ol>
                                <p>(secara kolektif, 'Tujuan').</p>
                                <p>6.2 Anda mengakui, menyetujui dan bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) dapat mengakses, menyimpan dan mendedahkan maklumat dan Kandungan Akaun anda jika diperlukan untuk melakukannya oleh undang-undang atau menurut perintah pengadilan atau oleh mana-mana pihak berkuasa pemerintah atau peraturan yang mempunyai bidang kuasa ke atas Nightcat Digital Solutions (JM0919865-V) atau dengan itikad baik kepercayaan bahawa pemeliharaan atau pendedahan akses sedemikian adalah wajar untuk:</p>
                                <ul>
                                    <li>mematuhi proses undang-undang; </li>
                                    <li>mematuhi permintaan dari mana-mana pihak berkuasa pemerintah atau pengawal selia yang mempunyai bidang kuasa ke atas Nightcat Digital Solutions (JM0919865-V); </li>
                                    <li>menguatkuasakan Syarat Perkhidmatan Nightcat Digital Solutions (JM0919865-V) atau Dasar Privasi ini; </li>
                                    <li>bertindak balas terhadap tuntutan yang diancam atau sebenar yang diajukan terhadap Nightcat Digital Solutions (JM0919865-V) atau tuntutan lain bahawa mana-mana Kandungan melanggar hak pihak ketiga;</li>
                                    <li>menjawab permintaan anda untuk perkhidmatan pelanggan; atau </li>
                                    <li>melindungi hak, harta benda atau keselamatan peribadi Nightcat Digital Solutions (JM0919865-V), pengguna dan / atau orang ramai.</li>
                                </ul>
                                <p>6.3 Sebagai tujuan yang akan kami akan/ mungkin kumpul, gunakan, dedahkan atau proses data peribadi anda bergantung pada keadaan yang ada, tujuan tersebut mungkin tidak muncul di atas. Walau bagaimanapun, kami akan memaklumkan anda tentang tujuan lain pada masa mendapatkan persetujuan anda, melainkan jika memproses data tanpa persetujuan anda dibenarkan oleh Undang-undang Privasi.</p>
                            ",
                            CN: "
                                <p>6.1 我们可能会出于以下一项或多项目的收集、使用、披露和/或处理您的个人数据：</p>
                                <ol type='a'>
                                    <li>考虑和/或处理您与我们的申请/交易或您通过服务与第三方的交易或通信； </li>
                                    <li>管理、运营、提供和/或管理您对我们服务和我们平台的使用和/或访问（包括但不限于记住您的偏好），以及您与我们的关系和用户帐户； </li>
                                    <li>响应、处理、处理或完成交易和/或满足您对某些产品和服务的要求，并通知您服务问题和异常帐户操作； </li>
                                    <li>执行我们的服务条款或任何适用的最终用户许可协议； </li>
                                    <li>保护人身安全和他人的权利、财产或安全； </li>
                                    <li>用于识别、验证、尽职调查或了解您的客户目的； </li>
                                    <li>评估和做出有关您的信用和风险状况以及信贷产品资格的决定； </li>
                                    <li>维护和管理可能不时需要的任何软件更新和/或其他更新和支持，以确保我们的服务顺利运行； </li>
                                    <li>处理或促进客户服务、执行您的指示、处理或回应您或代表您提出（或据称由您提出）的任何询问； </li>
                                    <li>为了管理和/或管理您与我们的关系或您对我们服务的使用，例如但不限于向您传达与我们的服务有关的管理信息。您承认并同意，我们的此类通信可以通过向您邮寄信件、文件或通知的方式进行，这可能涉及披露有关您的某些个人数据以实现相同的交付以及在外部封面上信封/邮件包裹； </li>
                                    <li>允许其他用户与您互动、与您联系或查看您在平台上的某些活动，包括在其他用户向您发送私人消息、在平台上为您发表评论或使用社交功能与您联系时通知您在平台上； </li>
                                    <li>进行研究、分析和开发活动（包括但不限于数据分析、调查、产品和服务开发和/或分析）、分析您如何使用我们的服务、推荐与您兴趣相关的产品和/或服务, 改进我们的服务或产品和/或增强您的客户体验； </li>
                                    <li>允许进行审计和调查，以验证我们目标受众的规模和组成，并了解他们对 Nightcat Digital Solutions (JM0919865-V) 服务的体验； </li>
                                    <li>用于营销和广告，并在这方面，通过各种媒介和通信方式向您发送与产品和/或服务（包括但不限于 Nightcat Digital Solutions (JM0919865-V) 可能提供的第三方的产品和/或服务）相关的营销和促销信息和材料合作或捆绑）Nightcat Digital Solutions (JM0919865-V)（和/或其附属公司或相关公司）可能正在销售、营销或推广的产品或服务，无论此类产品或服务现在存在还是将来创建。您可以随时使用电子营销材料中的取消订阅功能取消订阅接收营销信息。我们可能会使用您的联系信息向我们和我们的相关公司发送时事通讯或营销材料； </li>
                                    <li>响应法律程序或遵守或按照任何相关司法管辖区的任何适用法律、政府或监管要求的要求，或者我们有诚意相信此类披露是必要的，包括但不限于满足披露要求根据对 Nightcat Digital Solutions (JM0919865-V) 或其相关公司或附属公司具有约束力的任何法律的要求（包括，在适用的情况下，显示您的姓名、联系方式和公司详细信息）； </li>
                                    <li>为内部和法定报告和/或记录保存要求生成统计数据和研究； </li>
                                    <li>根据法律或监管义务或法律可能要求或我们可能已实施的风险管理程序，进行尽职调查或其他筛选活动（包括但不限于背景调查）； </li>
                                    <li>审核我们的服务或 Nightcat Digital Solutions (JM0919865-V) 的业务； </li>
                                    <li>防止或调查任何实际或疑似违反我们服务条款的行为、欺诈、非法活动、疏忽或不当行为，无论是否与您使用我们的服务或因您与我们的关系而引起的任何其他事项有关； </li>
                                    <li>回应针对 Nightcat Digital Solutions (JM0919865-V) 提出的任何威胁或实际索赔或任何内容侵犯第三方权利的其他索赔；</li>
                                    <li>存储、托管、备份（无论是用于灾难恢复还是其他）您的个人数据，无论是在您的管辖范围内还是在您的管辖范围之外； </li>
                                    <li>处理和/或促进商业资产交易或潜在的商业资产交易，如果此类交易涉及虾皮作为参与者或仅涉及虾皮的关联公司或附属公司作为参与者或涉及虾皮和/或任何一个或多个Nightcat Digital Solutions (JM0919865-V) 的关联公司或关联公司作为参与者，并且可能有其他第三方组织作为此类交易的参与者。“商业资产交易”是指购买、出售、租赁、合并、合并或任何其他收购、处置或融资的组织或组织的一部分，或组织的任何业务或资产；和/或 </li>
                                    <li>我们在获得您的同意时通知您的任何其他目的。</li>
                                </ol>
                                <p>（统称为“目的”）。</p>
                                <p>6.2 您承认、同意并同意，如果法律或法院或对虾皮有管辖权的任何政府或监管机构要求这样做，虾皮可以访问、保存和披露您的帐户信息和内容。相信这种访问保留或披露是合理必要的：</p>
                                <ul>
                                    <li>遵守法律程序；</li>
                                    <li>遵守对虾皮有管辖权的任何政府或监管机构的要求；</li>
                                    <li>执行 Nightcat Digital Solutions (JM0919865-V) 服务条款或本隐私政策；</li>
                                    <li>回应对 Nightcat Digital Solutions (JM0919865-V) 提出的任何威胁或实际索赔或任何内容侵犯第三方权利的其他索赔；</li>
                                    <li>回应您的客户服务请求；</li>
                                    <li>保护 Nightcat Digital Solutions (JM0919865-V)、其用户和/或公众的权利、财产或人身安全。</li>
                                </ul>
                                <p>6.3 由于我们将/可能收集、使用、披露或处理您的个人资料的目的取决于手头的情况，此类目的可能不会出现在上面。但是，我们会在获得您的同意时通知您此类其他目的，除非隐私法允许在未经您同意的情况下处理适用数据。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "How Does NightCat Protect And Retain Customer Information?",
                            BM: "BAGAIMANAKAN Nightcat Digital Solutions (JM0919865-V) MELINDUNGI DAN MENYIMPAN MAKLUMAT PELANGGAN?",
                            CN: "商店如何保护和保留客户信息？"
                        }
                        description: {
                            EN: "
                                <p>7.1 We implement a variety of security measures and strive to ensure the security of your personal data on our systems. User personal data is contained behind secured networks and is only accessible by a limited number of employees who have special access rights to such systems. However, there can inevitably be no guarantee of absolute security.</p>
                                <p>7.2 We will retain personal data in accordance with the Privacy Laws and/or other applicable laws. That is, we will destroy or anonymize your personal data as soon as it is reasonable to assume that (i) the purpose for which that personal data was collected is no longer being served by the retention of such personal data; and (ii) retention is no longer necessary for any legal or business purposes. If you cease using the Site, or your permission to use the Site and/or the Services is terminated or withdrawn, we may continue storing, using and/or disclosing your personal data in accordance with this Privacy Policy and our obligations under the Privacy Laws. Subject to applicable law, we may securely dispose of your personal data without prior notice to you.</p>
                            ",
                            BM: "
                                <p>7.1 Kami melaksanakan pelbagai langkah keselamatan untuk memastikan keselamatan data peribadi anda dalam sistem kami. Data peribadi pengguna terkandung di belakang rangkaian yang dijamin dan hanya boleh diakses oleh bilangan pekerja yang terhad yang mempunyai hak akses khusus untuk sistem tersebut.</p>
                                <p>7.2 Kami akan menyimpan data peribadi mengikut Undang-undang Privasi dan/atau undang-undang lain yang berkenaan. Iaitu, kami akan memusnahkan atau menganonimkan data peribadi anda apabila kami telah menentukan secara munasabah untuk mengandaikan bahawa (i) tujuan yang mana data peribadi itu dikumpulkan tidak lagi disampaikan oleh pengekalan data peribadi itu; dan (ii) penyimpanan tidak lagi diperlukan untuk sebarang tujuan undang-undang atau perniagaan dan (iii) tidak ada kepentingan sah lain yang memerlukan penyimpanan data peribadi sedemikian. Jika anda berhenti menggunakan Platform ini, atau kebenaran anda untuk menggunakan Platform dan/atau Perkhidmatan ditamatkan, kami boleh terus menyimpan, menggunakan dan/atau mendedahkan data peribadi anda mengikut Dasar Privasi ini dan kewajipan kami di bawah Undang-undang Privasi. Tertakluk kepada undang-undang yang terpakai, kami boleh melupuskan data peribadi anda dengan selamat tanpa memberi notis terlebih dahulu kepada anda.</p>
                            ",
                            CN: "
                                <p>7.1 我们实施多种安全措施，努力确保您在我们系统上的个人数据的安全。用户个人数据包含在安全网络之后，只有少数对此类系统具有特殊访问权限的员工才能访问。但是，绝对不能保证绝对安全。</p>
                                <p>7.2 我们将根据隐私法和/或其他适用法律保留个人数据。也就是说，当我们合理确定 (i) 保留此类个人数据不再满足收集个人数据的目的时，我们将销毁或匿名化您的个人数据；(ii) 出于任何法律或商业目的不再需要保留；(iii) 没有其他合法利益需要进一步保留此类个人数据。如果您停止使用平台，或者您使用平台和/或服务的许可被终止或撤销，我们可能会根据本隐私政策和我们在隐私法下的义务继续存储、使用和/或披露您的个人数据. 根据适用法律，我们可能会在不事先通知您的情况下安全地处理您的个人数据。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Does NightCat Disclose The Information It Collects From Its Visitors To Outside Parties?",
                            BM: "ADAKAH Nightcat Digital Solutions (JM0919865-V) AKAN MENDEDAHKAN MAKLUMAT YANG DIKUMPUL DARIPADA PELAWAT KEPADA PIHAK LUAR?",
                            CN: "Nightcat Digital Solutions (JM0919865-V) 是否会向外界披露它从访客那里收集的信息？"
                        }
                        description: {
                            EN: "
                                <p>8.1 In conducting our business, we will/may need to disclose your personal data to our third party service providers, agents and/or our affiliates or related corporations, and/or other third parties, whether sited in Singapore or outside of Singapore, for one or more of the above-stated Purposes. Such third party service providers, agents and/or affiliates or related corporations and/or other third parties would be processing your personal data either on our behalf or otherwise, for one or more of the above-stated Purposes. Such third parties include, without limitation:</p>
                                <ol type='a'>
                                    <li>Our subsidiaries, affiliates and related corporations</li>
                                    <li>Buyers or sellers you have transacted with or interacted with on the Platform or in connection with your use of the Services for the above-stated Purposes</li>
                                    <li>Other users of our Platform for one or more of the above-stated Purposes</li>
                                    <li>Contractors, agents, service providers and other third parties we use to support our business. These include but are not limited to those parties which provide administrative or other services to us such as mailing houses, logistics service providers, financial services providers, advertising and marketing partners, telecommunication companies, information technology companies and data centres</li>
                                    <li>Governmental or regulatory authorities having jurisdiction over Nightcat or as otherwise permitted under Section 6.2</li>
                                    <li>A buyer or other successor in the event of a merger, divestiture, restructuring, reorganization, dissolution or other sale or transfer of some or all of Nightcat’s assets, whether as a going concern or as part of bankruptcy, liquidation or similar proceeding, in which personal data held by Nightcat about our Service Users is among the assets transferred; or to a counterparty in a business asset transaction that Nightcat or any of its affiliates or related corporations is involved in and</li>
                                    <li>Third parties to whom disclosure by us is for one or more of the Purposes and such third parties would in turn be collecting and processing your personal data for one or more of the Purposes</li>
                                </ol>
                                <p>8.2 We may share user information including statistical and demographic information about our Users and information about their use of the Services with advertising partners and third party suppliers of advertisements, remarketing and/or other programming.</p>
                                <p>8.3 For the avoidance of doubt, in the event that Privacy Laws or other applicable laws permit an organisation such as us to collect, use or disclose your personal data without your consent, such permission granted by the laws shall continue to apply. Consistent with the foregoing and subject to applicable law, we may use your personal data for recognised legal grounds including to comply with our legal obligations to perform our contract with you, to achieve a legitimate interest and our reasons for using it outweigh any prejudice to your data protection rights, or where necessary in connection with a legal claim.</p>
                                <p>8.4 Third parties may unlawfully intercept or access personal data transmitted to or contained on the site, technologies may malfunction or not work as anticipated, or someone might access, abuse or misuse information through no fault of ours. We will nevertheless deploy reasonable security arrangements to protect your personal data as required by the Privacy Laws; however there can inevitably be no guarantee of absolute security such as but not limited to when unauthorised disclosure arises from malicious and sophisticated hacking by malcontents through no fault of ours.</p>
                                <p>8.5 Nightcat allows you to share videos from YouTube in the Nightcat Livestream feature (“YouTube Content”). To facilitate this, Nightcat uses YouTube API Services made available by YouTube. By using sharing YouTube Content, you hereby agree to be bound by the Google Privacy Policy (http://www.google.com/policies/privacy).</p>
                                <p>8.6 As set forth in Nightcat’s Terms of Service, users in possession of another User’s personal data through the use of the Services (the “Receiving Party”) hereby agree that, they will</p>
                                <ol type='i'>
                                    <li>Comply with all applicable personal data protection laws with respect to any such data</li>
                                    <li>Allow the User whose personal data the Receiving Party has collected (the “Disclosing Party”) to remove his or her data so collected from the Receiving Party’s database and</li>
                                    <li>Allow the Disclosing Party to review what information has been collected about them by the Receiving Party</li>
                                </ol>
                                <p>in each case of (ii) and (iii) above, in compliance with and where required by applicable laws.</p>
                                <p>8.7 Notwithstanding anything set forth herein, Sellers shall comply with all applicable Privacy Laws and, in respect of any buyer’s personal data received from Nightcat,</p>
                                <ol type='i'>
                                    <li>Are not permitted to use such buyer’s personal data except as reasonably necessary to respond to buyers’ enquiries and to carry out respond to, process, deal with or complete a transaction without the buyers’ and Nightcat’s prior written consent</li>
                                    <li>Should refrain from contacting buyers using such information outside of the Nightcat platform</li>
                                    <li>Are not permitted to disclose such buyer’s personal data to any unauthorized third parties without the buyer’s and Nightcat’s prior written consent</li>
                                    <li>Shall employ sufficient security measures to protect each Nightcat user’s personal data in their possession and to delete such data as soon as reasonably possible upon completion of the transaction and</li>
                                    <li>To inform Nightcat’s Personal Data Protection Officer at dpo.sg@shopee.com in the event of any potential data breach or other loss of such user’s data.</li>
                                </ol>
                            ",
                            BM: "
                                <p>8.1 Dalam menjalankan perniagaan kami, kami akan/mungkin perlu menggunakan, memproses, mendedahkan dan/atau memindahkan data peribadi anda kepada penyedia perkhidmatan pihak ketiga kami, ejen dan/atau sekutu kami atau syarikat berkaitan, dan/atau pihak ketiga lain, yang mungkin bertempat di Malaysia atau di luar Malaysia, untuk satu atau lebih daripada Tujuan yang dinyatakan di atas. Penyedia perkhidmatan pihak ketiga seperti ini, atau ejen dan/atau sekutu atau syarikat berkaitan dan/atau pihak ketiga yang lain akan memproses data peribadi anda sama ada bagi pihak kami atau sebaliknya, untuk satu atau lebih Tujuan yang dinyatakan di atas. Kami berusaha untuk memastikan bahawa pihak ketiga dan sekutu kami menyimpan data peribadi anda secara selamat daripada akses, pengumpulan, penggunaan, pendedahan, pemprosesan yang tidak diberikuasa atau risiko yang serupa dan hanya menyimpan data peribadi anda selama tempoh data peribadi anda diperlukan untuk Tujuan yang dinyatakan di atas. Pihak ketiga tersebut termasuk, tanpa batasan:</p>
                                <ol type='a'>
                                    <li>syarikat subsidiari, syarikat gabungan dan syarikat berkaitan;</li>
                                    <li>pembeli atau penjual yang telah anda berurusan dengan atau berinteraksi dengan di Platform atau berkaitan dengan penggunaan Perkhidmatan oleh anda untuk Tujuan yang dinyatakan di atas;</li>
                                    <li>pengguna lain Platform kami untuk satu atau lebih Tujuan yang dinyatakan di atas;</li>
                                    <li>kontraktor, ejen, penyedia perkhidmatan dan pihak ketiga lain yang kami gunakan untuk menyokong perniagaan kami. Ini termasuk tetapi tidak terhad kepada mereka yang menyediakan pentadbiran atau perkhidmatan lain kepada kami seperti rumah mel, pembekal perkhidmatan logistik, penyedia perkhidmatan kewangan, rakan pengiklanan dan pemasaran, syarikat telekomunikasi, syarikat teknologi maklumat dan pusat data;</li>
                                    <li>pihak berkuasa kerajaan atau pengawal selia yang mempunyai bidang kuasa ke atas Nightcat Digital Solutions (JM0919865-V) atau sebagaimana yang dibenarkan di bawah Seksyen 6.2</li>
                                    <li>pembeli atau pengganti lain sekiranya berlaku penggabungan, penyahgaraman, penyusunan semula, penyusunan semula, pembubaran atau penjualan atau pemindahan lain atau sebahagian daripada aset Pembeli, sama ada sebagai usaha berterusan atau sebagai sebahagian daripada kebankrapan, pembubaran atau prosiding yang serupa , di mana data peribadi yang dipegang oleh Pembeli tentang Pengguna Perkhidmatan kami adalah antara aset yang dipindahkan; atau kepada rakan niaga dalam urusniaga aset perniagaan yang Pembeli atau mana-mana sekutunya atau syarikat berkaitan yang terlibat; dan</li>
                                    <li>pihak ketiga yang pendedahan oleh kami adalah untuk satu atau lebih Tujuan dan pihak ketiga sedemikian akan mengumpul dan memproses data peribadi anda untuk satu atau lebih Tujuan. 
                                </ol>
                                <p>8.2 Kami mungkin berkongsi maklumat statistik dan demografi mengenai Pengguna kami dan penggunaan Perkhidmatan mereka dengan rakan pengiklanan dan pemasaran dan pembekal iklan pihak tiga dan pengaturcaraan. Ini tidak termasuk apa-apa yang boleh digunakan untuk mengenal pasti anda secara khusus atau untuk mengetahui maklumat individu tentang anda.</p>
                                <p>8.3 Untuk mengelakkan keraguan, sekiranya Undang-undang Privasi atau undang-undang lain yang berkaitan membenarkan organisasi seperti kami mengumpul, menggunakan atau mendedahkan data peribadi anda tanpa persetujuan anda, kebenaran yang diberikan oleh undang-undang akan terus digunakan. Selaras dengan yang disebutkan di atas dan tertakluk pada undang-undang yang berlaku, kami mungkin menggunakan data peribadi anda untuk alasan undang-undang yang diakui termasuk untuk mematuhi kewajiban undang-undang kami untuk melaksanakan kontrak kami dengan anda, untuk mencapai kepentingan yang sah dan alasan kami menggunakannya melebihi prasangka buruk terhadap anda hak perlindungan data, atau jika perlu sehubungan dengan tuntutan undang-undang.</p>
                                <p>8.4 Pihak ketiga boleh secara tidak sah memintas atau mengakses data peribadi yang dihantar atau terkandung di dalam laman sesawang, teknologi mungkin tidak berfungsi atau tidak berfungsi seperti yang dijangkakan, ataupun pihak ketiga yang tidak mempunyai kebenaran mungkin mengakses dan menyalahgunakan maklumat yang tidak berpunca daripada kesilapan kami. Walau bagaimanapun kami akan mengamalkan peraturan keselamatan yang munasabah untuk melindungi data peribadi anda seperti yang dikehendaki oleh Undang-undang Privasi; namun tidak ada jaminan keselamatan secara mutlak seperti dan tidak terhad kepada pendedahan yang tidak dibenarkan timbul akibat penggodaman yang berbahaya dan canggih oleh pengacau yang tidak berpunca daripada kesilapan kami.</p>
                                <p>8.5 Nightcat Digital Solutions (JM0919865-V) membolehkan anda berkongsi video dari YouTube dalam ciri khas Nightcat Digital Solutions (JM0919865-V) Livestream ('Kandungan YouTube'). Untuk memudahkan ini, Nightcat Digital Solutions (JM0919865-V) menggunakan Perkhidmatan API YouTube yang disediakan oleh YouTube. Dengan menggunakan perkongsian Kandungan YouTube, anda dengan ini setuju untuk terikat dengan Dasar Privasi Google (http://www.google.com/policies/privacy).</p>
                                <p>8.6 Seperti yang dinyatakan dalam Syarat Layanan Nightcat Digital Solutions (JM0919865-V), Pengguna (termasuk mana-mana pekerja, agen, wakil atau orang lain yang bertindak untuk Pengguna tersebut atau bagi pihak Pengguna) yang memiliki data pribadi Pengguna lain melalui penggunaan Perkhidmatan ('Pihak Penerima') dengan ini setuju bahawa, mereka akan</p>
                                <ol type='i'>
                                    <li>mematuhi semua Undang-undang Privasi sehubungan dengan sebarang data tersebut, termasuk mana-mana pengumpulan, pemprosesan, penyimpanan atau pemindahan data tersebut; </li>
                                    <li>membenarkan Nightcat Digital Solutions (JM0919865-V) atau Pengguna yang data peribadinya telah dikumpulkan oleh Pihak Penerima ('Pihak yang Mengungkapkan') untuk menghapus datanya yang dikumpulkan dari pangkalan data Pihak Penerima; dan </li>
                                    <li>membenarkan Nightcat Digital Solutions (JM0919865-V) atau Pihak yang Mengungkapkan untuk mengkaji maklumat apa yang telah dikumpulkan tentang mereka oleh Pihak Penerima, dalam setiap kes (ii) dan (iii) di atas, sesuai dengan dan jika diperlukan oleh undang-undang yang berlaku.</li>
                                </ol>
                                <p>8.7 Walau apa pun yang dinyatakan di sini, Penjual-penjual (termasuk mana-mana pekerja, agen, wakil atau orang lain yang bertindak untuk Penjual tersebut atau bagi pihak Penjual) harus mematuhi semua Undang-undang Privasi yang berkenaan dan, berkenaan dengan data peribadi pembeli yang diterima daripada Nightcat Digital Solutions (JM0919865-V),</p>
                                <ol type='i'>
                                    <li>tidak dibenarkan menggunakan data peribadi pembeli tersebut kecuali jika diperlukan untuk menjawab pertanyaan pembeli dan untuk melaksanakan, bertindak balas, memproses, menangani atau menyelesaikan transaksi tanpa kebenaran bertulis pembeli dan Nightcat Digital Solutions (JM0919865-V) terlebih dahulu; </li>
                                    <li>tidak boleh menghubungi pembeli menggunakan maklumat tersebut di luar Platform  Nightcat Digital Solutions (JM0919865-V); </li>
                                    <li>tidak dibenarkan untuk mendedahkan data peribadi pembeli tersebut kepada pihak ketiga yang tidak dibenarkan tanpa kebenaran bertulis pembeli dan Nightcat Digital Solutions (JM0919865-V) terlebih dahulu; </li>
                                    <li>akan menggunakan langkah-langkah keselamatan yang mencukupi untuk melindungi data peribadi setiap pengguna Nightcat Digital Solutions (JM0919865-V) yang mereka miliki, mengekalkan data tersebut selama tempoh yang diperlukan untuk tujuan yang dinyatakan di atas dan menurut Undang-undang Privasi dan untuk menghapus atau mengembalikan data tersebut kepada Nightcat Digital Solutions (JM0919865-V) atas sebarang permintaan Nightcat Digital Solutions (JM0919865-V) atau secepat mungkin setelah selesai transaksi; dan </li>
                                    <li>untuk memberitahu Pegawai Perlindungan Data Peribadi Nightcat Digital Solutions (JM0919865-V) di dpo.my@Nightcat Digital Solutions (JM0919865-V).com sekiranya terdapat kemungkinan pelanggaran data atau kehilangan data pengguna tersebut.</li>
                                </ol>
                            
                            ",
                            CN: "
                                <p>8.1 在开展我们的业务时，我们将/可能需要使用、处理、披露和/或将您的个人数据传输给我们的第三方服务提供商、代理和/或我们的附属公司或相关公司，和/或其他第三方，这些第三方可能会出于上述一项或多项目的，位于马来西亚境内或境外。此类第三方服务提供商、代理和/或附属公司或相关公司和/或其他第三方将代表我们或以其他方式处理您的个人数据，用于上述一项或多项目的。我们努力确保第三方和我们的附属公司保护您的个人数据免受未经授权的访问、收集、使用、披露、处理或类似风险，并仅在上述需要您的个人数据的时间内保留您的个人数据目的。</p>
                                <ol type='a'>
                                    <li>我们的子公司、附属公司和相关公司； </li>
                                    <li>您在平台上进行交易或互动的买家或卖家，或与您为上述目的使用服务有关的买家或卖家；</li>
                                    <li>出于上述一项或多项目的而使用我们平台的其他用户；</li>
                                    <li>承包商、代理商、服务提供商和我们用来支持我们业务的其他第三方。这些包括但不限于向我们提供行政或其他服务的各方，例如邮寄公司、物流服务提供商、金融服务提供商、广告和营销合作伙伴、电信公司、信息技术公司和数据中心； </li>
                                    <li>对虾皮有管辖权或第 6.2 条允许的政府或监管机构；</li>
                                    <li>在合并、剥离、重组、重组、解散或以其他方式出售或转让 Nightcat Digital Solutions (JM0919865-V) 的部分或全部资产时的买方或其他继承人，无论是作为持续经营还是作为破产、清算或类似程序的一部分，其中Nightcat Digital Solutions (JM0919865-V) 持有的关于我们服务用户的个人数据属于转让的资产；或与 Nightcat Digital Solutions (JM0919865-V) 或其任何附属公司或相关公司参与的商业资产交易中的交易对手；和 </li>
                                    <li>我们为一项或多项目的而向其披露的第三方，而此类第三方又会为一项或多项目的收集和处理您的个人数据。</li>
                                </ol>
                                <p>8.2 我们可能会与广告合作伙伴和广告、再营销和/或其他节目的第三方供应商共享用户信息，包括有关我们用户的统计和人口统计信息以及有关他们使用服务的信息。 </p>
                                <p>8.3 为免生疑问，如果隐私法或其他适用法律允许我们等组织在未经您同意的情况下收集、使用或披露您的个人数据，法律授予的此类许可应继续适用。根据上述规定并受适用法律的约束，我们可能会出于公认的法律依据使用您的个人数据，包括遵守我们的法律义务、履行我们与您的合同、实现合法利益，并且我们使用这些数据的理由大于对以下内容的任何损害您的数据保护权利，或在必要时与法律索赔有关</p>
                                <p>8.4 第三方可能非法拦截或访问传输到网站或包含在网站上的个人数据，技术可能会出现故障或无法按预期工作，或者有人可能由于我们的过错而访问、滥用或误用信息。尽管如此，我们仍会根据隐私法的要求部署合理的安全措施来保护您的个人数据；然而，我们不可避免地无法保证绝对安全，例如但不限于因恶意和复杂的黑客攻击而导致未经授权的披露而并非我们的过错。 </p>
                                <p>8.5 Nightcat Digital Solutions (JM0919865-V) 允许您在 Nightcat Digital Solutions (JM0919865-V) 直播功能（“YouTube 内容”）中分享来自 YouTube 的视频。为此，Nightcat Digital Solutions (JM0919865-V) 使用 YouTube 提供的 YouTube API 服务。通过使用共享 YouTube 内容，您在此同意受 Google 隐私政策(http://www.google.com/policies/privacy ) 的约束。</p>
                                <p>8.6 根据 Nightcat Digital Solutions (JM0919865-V) 的服务条款，用户（包括任何员工、代理人、代表或代表该用户或代表该用户行事的任何其他人）通过使用服务（“接收方”）在此同意，他们将 :</p>
                                <ol type='i'>
                                    <li>遵守与任何此类数据相关的所有适用隐私法，包括此类数据的任何收集、处理、存储或传输；</li>
                                    <li>允许 Nightcat Digital Solutions (JM0919865-V) 或接收方收集其个人数据的用户（“披露方”）从接收方的数据库中删除其收集的数据；</li>
                                    <li>允许 Nightcat Digital Solutions (JM0919865-V) 或披露方在上述 (ii) 和 (iii) 的每种情况下，按照适用法律的要求审查接收方收集的有关他们的信息。</li>
                                </ol>
                                <p>8.7 尽管此处有任何规定，卖方（包括任何雇员、代理人、代表或任何其他代表该卖方或代表该卖方行事的人）应遵守所有适用的隐私法，并且对于从 Nightcat Digital Solutions (JM0919865-V) 收到的任何买方个人数据, </p>
                                <ol type='i'>
                                    <li>不得使用此类买家的个人数据，除非在合理必要的情况下回应买家的询问以及未经买家和 Nightcat Digital Solutions (JM0919865-V) 事先书面同意而执行、回应、处理、处理或完成交易；</li>
                                    <li>应避免在 Nightcat Digital Solutions (JM0919865-V) 平台之外使用此类信息联系买家；</li>
                                    <li>未经买方和虾皮事先书面同意，不得向任何未经授权的第三方披露此类买方的个人数据；</li>
                                    <li>应采取足够的安全措施来保护每个虾皮用户拥有的个人数据，仅在上述目的和隐私法规定的时间内保留此类数据，并在收到此类数据后删除或将此类数据返回给虾皮来自虾皮的任何要求或在交易完成后尽快合理；</li>
                                    <li>通知 Nightcat Digital Solutions (JM0919865-V) 的个人数据保护官，地址为dpo.my@Nightcat Digital Solutions (JM0919865-V).com在任何潜在的数据泄露或此类用户数据的其他丢失的情况下。</li>
                                </ol>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Information On Children",
                            BM: "MAKLUMAT BERKAITAN KANAK-KANAK",
                            CN: "儿童信息 "
                        }
                        description: {
                            EN: "
                                <p>9.1 The Services are not intended for children under the age of 13. We do not knowingly collect or maintain any personal data or non-personally-identifiable information from anyone under the age of 13 nor is any part of our Site or other Services directed to children under the age of 13. As a parent or legal guardian, please do not allow such children under your care to submit personal data to Nightcat. In the event that personal data of a child under the age of 13 in your care is disclosed to Nightcat, you hereby consent to the processing of the child’s personal data and accept and agree to be bound by this Policy on behalf of such child. We will close any accounts used exclusively by such children and will remove and/or delete any personal data we believe was submitted without parental consent by any child under the age of 13.</p>
                            "
                            BM: "
                                <p>9.1 Perkhidmatan ini tidak ditujukan kepada kanak-kanak di bawah umur 13 tahun. Kami tidak secara sedar mengumpul atau menyimpan sebarang data peribadi atau maklumat yang tidak dapat dikenalpasti daripada sesiapa di bawah umur 13 tahun dan tidak ada mana-mana bahagian Platform kami atau Perkhidmatan lain yang ditujukan kepada kanak-kanak di bawah umur 13. Sebagai ibu bapa atau penjaga yang sah, sila jangan membenarkan kanak-kanak di bawah jagaan anda menyerahkan data peribadi kepada Nightcat Digital Solutions (JM0919865-V). Sekiranya data peribadi kanak-kanak di bawah umur 13 tahun dalam jagaan anda didedahkan kepada Nightcat Digital Solutions (JM0919865-V), anda dengan ini bersetuju kepada pemprosesan data peribadi kanak-kanak tersebut serta menerima dan bersetuju untuk terikat di bawah Polisi ini bagi pihak kanak-kanak tersebut. Kami akan menutup mana-mana akaun yang digunakan secara eksklusif oleh kanak-kanak tersebut dan akan melupuskan dan/atau memadamkan mana-mana data peribadi yang kami percaya telah dikemukakan oleh kanak-kanak di bawah umur 13 tahun tanpa persetujuan ibu bapa.</p>
                            ",
                            CN: "
                                <p>9.1 服务不适用于 13 岁以下的儿童。我们不会有意收集或维护任何 13 岁以下的人的任何个人数据或非个人身份信息，我们的平台或其他服务的任何部分也不会针对13 岁以下的儿童。作为父母或法定监护人，请不要让您照顾的此类儿童向 Nightcat Digital Solutions (JM0919865-V) 提交个人数据。如果您照顾的 13 岁以下儿童的个人数据被披露给 Nightcat Digital Solutions (JM0919865-V)，您在此同意处理该儿童的个人数据，并代表该儿童接受并同意受本政策的约束。我们将关闭此类儿童专用的任何帐户，并将删除和/或删除我们认为任何 13 岁以下儿童未经父母同意而提交的任何个人数据。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Information Collected By Third Parties",
                            BM: "MAKLUMAT YANG DIKUMPULKAN OLEH PIHAK KETIGA",
                            CN: "第三方收集的信息"
                        }
                        description: {
                            EN: "
                                <p>10.1 Our Site uses Google Analytics, a web analytics service provided by Google, Inc. ('Google'). Google Analytics uses cookies, which are text files placed on your computer, to help the website analyse how Users use the Site. The information generated by the cookie about your use of the website (including your IP address) will be transmitted to and stored by Google on servers in the United States. Google will use this information for the purpose of evaluating your use of the website, compiling reports on website activity for website operators and providing other services relating to website activity and Internet usage. Google may also transfer this information to third parties where required to do so by law, or where such third parties process the information on Google's behalf. Google will not associate your IP address with any other data held by Google.</p>
                                <p>10.2 We, and third parties, may from time to time make software applications downloads available for your use on or through the Services. These applications may separately access, and allow a third party to view, your identifiable information, such as your name, your user ID, your computer's IP Address or other information such as any cookies that you may previously have installed or that were installed for you by a third party software application or website. Additionally, these applications may ask you to provide additional information directly to third parties. Third party products or services provided through these applications are not owned or controlled by Nightcat. You are encouraged to read the terms and other policies published by such third parties on their websites or otherwise.</p>
                            ",
                            BM: "
                                <p>10.1 Platform kami menggunakan Google Analytics, sebuah perkhidmatan analisis laman sesawang yang disediakan oleh Google, Inc. ('Google'). Google Analytics menggunakan “cookies”, yang merupakan fail teks yang diletakkan pada peranti anda, untuk membantu Platform menganalisis bagaimana Pengguna menggunakan Platform. Maklumat yang dihasilkan oleh “cookies” tentang penggunaan anda di Platform (termasuk alamat IP anda) akan dihantar dan disimpan oleh Google di pelayan di Amerika Syarikat. Google akan menggunakan maklumat ini untuk tujuan menilai penggunaan anda di Platform, mengumpulkan laporan mengenai aktiviti laman sesawang untuk pengendali laman sesawang dan menyediakan perkhidmatan lain yang berkaitan dengan aktiviti laman sesawamg dan penggunaan Internet. Google juga mungkin memindahkan maklumat ini kepada pihak ketiga jika dikehendaki berbuat demikian oleh undang-undang, atau jika pihak ketiga tersebut memproses maklumat di pihak Google. Google tidak akan mengaitkan alamat IP anda dengan data lain yang dipegang oleh Google.</p>
                                <p>10.2 Kami, dan pihak ketiga, boleh dari semasa ke semasa menyediakan aplikasi perisian yang boleh dimuat turun untuk kegunaan anda di Platform atau melalui Perkhidmatan. Aplikasi ini boleh mengakses secara berasingan, dan membenarkan pihak ketiga melihat, maklumat yang boleh mengenalpasti anda, seperti nama anda, ID pengguna anda, alamat IP peranti anda atau maklumat lain seperti mana-mana “cookies” yang sebelum ini telah anda pasang atau yang dipasang oleh aplikasi perisian atau laman sesawang pihak ketiga. Di samping itu, aplikasi ini mungkin meminta anda untuk memberikan maklumat tambahan terus kepada pihak ketiga. Produk atau perkhidmatan pihak ketiga yang disediakan melalui aplikasi ini tidak dimiliki atau dikendalikan oleh Nightcat Digital Solutions (JM0919865-V). Anda digalakkan untuk membaca terma dan dasar lain yang diterbitkan oleh pihak ketiga tersebut di laman sesawang mereka atau sebaliknya.</p>
                            ",
                            CN: "
                                <p>10.1 我们的平台使用谷歌分析，谷歌公司（“谷歌”）提供的一种网络分析服务。Google Analytics 使用 cookie（放置在您设备上的文本文件）来帮助平台分析用户如何使用平台。由 cookie 生成的关于您使用平台的信息（包括您的 IP 地址）将传输到谷歌并由谷歌存储在美国的服务器上。谷歌将使用这些信息来评估您对平台的使用情况、为网站运营商编制网站活动报告以及提供与网站活动和互联网使用相关的其他服务。谷歌也可能在法律要求的情况下将这些信息传输给第三方，或者第三方代表谷歌处理信息。 </p>
                                <p>10.2 我们和第三方可能会不时通过平台或服务提供软件应用程序下载供您使用。这些应用程序可能会单独访问并允许第三方查看您的可识别信息，例如您的姓名、用户 ID、您设备的 IP 地址或其他信息，例如您之前可能已安装或为您安装的任何 cookie通过第三方软件应用程序或网站。此外，这些应用程序可能会要求您直接向第三方提供其他信息。Nightcat Digital Solutions (JM0919865-V) 不拥有或控制通过这些应用程序提供的第三方产品或服务。我们鼓励您阅读此类第三方在其网站或其他地方发布的条款和其他政策。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Disclaimer Regarding Security And Third Party Sites",
                            BM: "PENAFIAN BERKAITAN KESELAMATAN DAN LAMAN SESAWANG PIHAK KETIGA",
                            CN: "关于安全和第三方网站的免责声明"
                        }
                        description: {
                            EN: "
                                <p>11.1 WE DO NOT GUARANTEE THE SECURITY OF PERSONAL DATA AND/OR OTHER INFORMATION THAT YOU PROVIDE ON THIRD PARTY SITES. We do implement a variety of security measures to maintain the safety of your personal data that is in our possession or under our control. Your personal data is contained behind secured networks and is only accessible by a limited number of persons who have special access rights to such systems, and are required to keep the personal data confidential. When you place orders or access your personal data, we offer the use of a secure server. All personal data or sensitive information you supply is encrypted into our databases to be only accessed as stated above.</p>
                                <p>11.2 In an attempt to provide you with increased value, we may choose various third party websites to link to, and frame within, the Site. We may also participate in co-branding and other relationships to offer e-commerce and other services and features to our visitors. These linked sites have separate and independent privacy policies as well as security arrangements. Even if the third party is affiliated with us, we have no control over these linked sites, each of which has separate privacy and data collection practices independent of us. Data collected by our co-brand partners or third party web sites (even if offered on or through our Site) may not be received by us.</p>
                                <p>11.3 We therefore have no responsibility or liability for the content, security arrangements (or lack thereof) and activities of these linked sites. These linked sites are only for your convenience and you therefore access them at your own risk. Nonetheless, we seek to protect the integrity of our Site and the links placed upon each of them and therefore welcome any feedback about these linked sites (including, without limitation, if a specific link does not work).</p>
                            ",
                            BM: "
                                <p>11.1 KAMI TIDAK MENJAMIN KESELAMATAN DATA PERIBADI DAN / ATAU MAKLUMAT LAIN YANG ANDA BERIKAN KEPADA LAMAN SESAWANG PIHAK KETIGA. Kami melaksanakan pelbagai langkah keselamatan untuk mengekalkan keselamatan data peribadi anda yang berada dalam simpanan kami atau di bawah kawalan kami. Data peribadi anda terkandung di rangkaian yang selamat dan hanya boleh diakses oleh beberapa orang yang mempunyai hak akses khusus untuk sistem tersebut, dan dikehendaki menyimpan data peribadi sulit. Apabila anda membuat pesanan atau mengakses data peribadi anda, kami mencadangkan supaya menggunakan server yang selamat. Semua data peribadi atau maklumat sensitif yang anda berikan dienkripsi ke pangkalan data kami untuk diakses hanya seperti yang dinyatakan di atas.</p>
                                <p>11.2 Dalam usaha untuk memberi anda nilai yang lebih tinggi, kami mungkin memilih pelbagai laman sesawang pihak ketiga untuk dipautkan, dan dibingkaikan dalam Platform ini. Kami juga mungkin mengambil bahagian dalam penjenamaan bersama dan hubungan lain untuk menawarkan e-dagang dan perkhidmatan dan ciri-ciri lain kepada pelawat kami. Laman sesawang yang terpaut ini mempunyai dasar privasi dan pengaturan keselamatan berasingan. Sekalipun pihak ketiga berafiliasi dengan kami, kami tidak mempunyai kawalan ke atas laman-laman yang dipaut ini, masing-masing mempunyai privasi dan cara pengumpulan data tersendiri dan yang berasingan dari kami. Data yang dikumpul oleh rakan kongsi bersama rakan kami atau laman sesawang pihak ketiga (walaupun ditawarkan pada atau melalui Platform kami) mungkin tidak diterima oleh kami.</p>
                                <p>11.3 Oleh itu, kami tidak mempunyai sebarang tanggungjawab atau liabiliti untuk kandungan, pengaturan keselamatan (atau kekurangannya) dan aktiviti-aktiviti laman-laman sesawang yang dipautkan. Laman-laman yang dipautkan ini hanya untuk kemudahan anda dan oleh itu anda mengaksesnya atas risiko anda sendiri. Walau bagaimanapun, kami berusaha untuk melindungi integriti Platform kami dan pautan yang diberikan kepada setiap laman yang dipautkan dan oleh itu mengalu-alukan sebarang maklum balas mengenai laman-laman yang dipautkan (termasuk, tanpa batasan, jika pautan tertentu tidak berfungsi).</p>
                            ",
                            CN: "
                                <p>11.1 我们不保证您在第三方网站上提供的个人数据和/或其他信息的安全。我们确实实施了各种安全措施来维护我们拥有或控制的您的个人数据的安全。您的个人数据包含在安全网络之后，只有少数对此类系统具有特殊访问权限的人才能访问，并且需要对个人数据保密。当您下订单或访问您的个人数据时，我们会提供安全服务器的使用。您提供的所有个人数据或敏感信息都被加密到我们的数据库中，只能按上述方式访问。 </p>
                                <p>11.2 为了给您提供更高的价值，我们可能会选择各种第三方网站链接到平台，并在平台内构建。我们还可能参与联合品牌和其他关系，为我们的访问者提供电子商务和其他服务和功能。这些链接网站有单独和独立的隐私政策以及安全安排。即使第三方与我们有关联，我们也无法控制这些链接网站，每个网站都有独立于我们的独立隐私和数据收集做法。我们可能不会收到我们的联合品牌合作伙伴或第三方网站（即使在我们的平台上或通过我们的平台提供）收集的数据。</p>
                                <p>11.3 因此，我们对这些链接网站的内容、安全安排（或缺乏安全安排）和活动不承担任何责任或义务。这些链接的网站只是为了您的方便，因此您需要自行承担访问它们的风险。尽管如此，我们仍力求保护我们平台的完整性以及放置在每个平台上的链接，因此欢迎对这些链接站点的任何反馈（包括但不限于，如果特定链接不起作用）。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Will NightCat Transfer Your Information Overseas?",
                            BM: "ADAKAH Nightcat Digital Solutions (JM0919865-V) AKAN MEMINDAHKAN MAKLUMAT ANDA KE LUAR NEGARA?",
                            CN: "Nightcat Digital Solutions (JM0919865-V) 会将您的信息传输到海外吗？"
                        }
                        description: {
                            EN: "
                                <p>12.1 Your personal data and/or information may be transferred to, stored or processed outside of your country. In most cases, your personal data will be processed in Singapore, where our servers are located. Nightcat will only transfer your information overseas in accordance with Privacy Laws.</p>
                            ",
                            BM: "
                                <p>12.1 Data dan/atau maklumat peribadi anda mungkin akan dipindahkan, disimpan atau diproses di luar negara anda untuk satu atau lebih daripada satu Tujuan. Dalam kebanyakan kes, data peribadi anda akan diproses oleh kami di Malaysia, di mana pelayan kami terletak. Nightcat Digital Solutions (JM0919865-V) hanya akan memindahkan maklumat anda ke luar negara mengikut Undang-undang Privasi.</p>
                            ",
                            CN: "
                                <p>12.1 出于一项或多项目的，您的个人数据和/或信息可能会被转移到、存储或处理到您所在的国家/地区以外。在大多数情况下，我们会在我们的服务器所在的新加坡处理您的个人数据。Nightcat Digital Solutions (JM0919865-V) 只会根据隐私法将您的信息传输到海外。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "How Can You Withdraw Consent, Request Access To Or Correct Information You Have Provided To Us?",
                            BM: "BAGAIMANA ANDA BOLEH MENARIK BALIK KEBENARAN, MEMINTA AKSES KEPADA ATAU MEMBETULKAN MAKLUMAT YANG TELAH ANDA BERIKAN KEPADA KAMI?",
                            CN: "您如何撤回同意、请求访问或更正您提供给我们的信息？"
                        }
                        description: {
                            EN: "
                                <p><b>13.1 Withdrawing Consent</b></p>
                                <p>13.1.1 You may withdraw your consent for the collection, use and/or disclosure of your personal data in our possession or under our control by sending an email to our Personal Data Protection Officer at the email address listed below in Section 19.2 and we will process such requests in accordance with this Privacy Policy and our obligations under the Privacy Laws and other applicable laws. However, your withdrawal of consent may mean that we will not be able to continue providing the Services to you and we may need to terminate your existing relationship and/or the contract you have with us.</p>
                                <p>13.1.2 Where you share YouTube Content, in addition to withdrawing your consent by emailing us pursuant to Section 18.1.1, you may also revoke Nightcat’s access to your personal data via the Google security settings page at https://security./settings/security/permissions</p>
                                <p>13.1.3 Once we have your clear withdrawal instructions and verified your identity, we will process your request for withdrawal of consent, and will thereafter not collect, use and/or disclose your personal data in the manner stated in your request. If we are unable to verify your identity or understand your instructions, we will liaise with you to understand your request.</p>
                                <p>13.1.4 However, your withdrawal of consent could result in certain legal consequences arising from such withdrawal. In this regard, depending on the extent of your withdrawal of consent for us to process your personal data, it may mean that we will not be able to continue providing the Services to you, we may need to terminate your existing relationship and/or the contract you have with us, etc., as the case may be, which we will inform you of.</p>
                                <p><b>13.2 Requesting Access and/or Correction of Personal Data</b></p>
                                <p>13.2.1 If you have an account with us, you may personally access and/or correct your personal data currently in our possession or control through the Account Settings page on the Site. If you do not have an account with us, you may request to access and/or correct your personal data currently in our possession or control by submitting a written request to us. We will need enough information from you in order to ascertain your identity as well as the nature of your request so as to be able to deal with your request. Hence, please submit your written request by sending an email to our Personal Data Protection Officer at the email address listed below in Section 14.2</p>
                                <p>13.2.2 For a request to access personal data, once we have sufficient information from you to deal with the request, we will seek to provide you with the relevant personal data within 30 days (or, if you are resident in Malaysia, 21 days). Where we are unable to respond to you within the said 30 days (or, if you are resident in Malaysia, 21 days), we will notify you of the soonest possible time within which we can provide you with the information requested. Note that Privacy Laws may exempt certain types of personal data from being subject to your access request.</p>
                                <p>13.2.3 For a request to correct personal data, once we have sufficient information from you to deal with the request, we will:</p>
                                <ol type='a'>
                                    <li>Correct your personal data within 30 days (or, if you are resident in Malaysia, 21 days). Where we are unable to do so within the said period, we will notify you of the soonest practicable time within which we can make the correction. Note that Privacy Laws may exempt certain types of personal data from being subject to your correction request as well as provides for situation(s) when correction need not be made by us despite your request and</li>
                                    <li>We will send the corrected personal data to every other organisation to which the personal data was disclosed by us within a year before the date the correction was made, unless that other organisation does not need the corrected personal data for any legal or business purpose.</li>
                                </ol>
                                <p>13.2.4 Notwithstanding sub-paragraph (b) immediately above, we may, if you so request, send the corrected personal data only to specific organisations to which the personal data was disclosed by us within a year before the date the correction was made.</p>
                                <p>13.2.5 We will/may also be charging you a reasonable fee for the handling and processing of your requests to access your personal data. If we so choose to charge, we will provide you with a written estimate of the fee we will be charging. Please note that we are not required to respond to or deal with your access request unless you have agreed to pay the fee.</p>
                                <p>13.2.6 We reserve the right to refuse to correct your personal data in accordance with the provisions as set out in Privacy Laws, where they require and/or entitle an organisation to refuse to correct personal data in stated circumstances.</p> 
                            ",
                            BM: "
                                <p><b>13.1 Menarik balik Kebenaran</b></p>
                                <p>13.1.1 Anda boleh menarik balik persetujuan anda untuk pengumpulan, penggunaan dan/atau pendedahan dan/atau meminta pemadaman data peribadi anda dalam simpanan kami atau di bawah kawalan kami dengan menghantar e-mel kepada Pegawai Perlindungan Data Peribadi kami di alamat e-mel dpo.my@Nightcat Digital Solutions (JM0919865-V).com dan kami akan memproses permintaan tersebut berdasarkan Dasar Privasi ini dan tanggungjawab kami dibawah Undang-undang Privasi dan undang-undang yang berkenaan. Namun, penarikan persetujuan anda mungkin bermaksud bahawa kami tidak dapat terus menawarkan Perkhidmatan kepada anda dan kami mungkin perlu menghentikan hubungan anda yang ada dan/atau kontrak yang anda ada dengan kami.</p>
                                <p>13.1.2 Di mana anda berkongsi Kandungan YouTube, selain menarik balik persetujuan anda dengan menghantar e-mel kepada kami menurut Bahagian 13.1.1, anda juga boleh menarik balik akses Nightcat Digital Solutions (JM0919865-V) ke data peribadi anda melalui halaman tetapan keselamatan Google di https://security.google.com/settings/security/permissions.  </p>
                                <p><b>13.2 Meminta Akses kepada atau Membetulkan Data Peribadi</b></p>
                                <p>13.2.1 Jika anda mempunyai akaun dengan kami, anda boleh mengakses dan/atau membetulkan data peribadi anda yang kini ada dalam pemilikan atau kawalan kami melalui halaman Tetapan Akaun di Platform. Jika anda tidak mempunyai akaun dengan kami, anda boleh meminta untuk mengakses dan/atau membetulkan data peribadi anda pada masa ini dalam pemilikan atau kawalan kami dengan mengemukakan permintaan bertulis kepada kami. Kami akan memerlukan maklumat yang cukup dari anda untuk memastikan identiti anda serta butiran tentang permintaan anda untuk memproses permintaan anda. Oleh itu, sila hantarkan permintaan bertulis anda dengan menghantar e-mel kepada Pegawai Perlindungan Data Peribadi kami di alamat e-mel dpo.my@Nightcat Digital Solutions (JM0919865-V).com.</p>
                                <p>13.2.2 Kami mungkin mengenakan bayaran yang berpatutan untuk pengendalian dan pemprosesan permintaan anda untuk mengakses data peribadi anda. Sekiranya kami memilih untuk mengenakan bayaran, kami akan memberikan anggaran bertulis mengenai bayaran yang akan kami kenakan. Harap maklum bahawa kami tidak perlu membalas atau memproses permintaan akses anda melainkan anda telah bersetuju untuk membayar yuran membuat bayaran tersebut.</p>
                                <p>13.2.3 Kami berhak menolak permintaan untuk membetulkan data peribadi anda berdasarkan peruntukan yang termaktub dalam Undang-undang Privasi, di mana mereka memerlukan dan/atau memberi hak kepada organisasi untuk menolak untuk membetulkan data peribadi dalam keadaan yang dinyatakan.</p>
                            ",
                            CN: "
                                <p><b>13.1 撤回同意 </b></p>
                                <p>13.1.1 您可以通过发送电子邮件至dpo.my@Nightcat Digital Solutions (JM0919865-V)向我们的个人数据保护官发送电子邮件，撤回您对收集、使用和/或披露和/或要求删除我们拥有或控制的您的个人数据的同意。 com，我们将根据本隐私政策以及我们在隐私法和其他适用法律下的义务处理此类请求。但是，您撤回同意可能意味着我们将无法继续向您提供服务，我们可能需要终止您现有的关系和/或您与我们之间的合同。 </p>
                                <p>13.1.2 如果您共享 YouTube 内容，除了根据第 13.1.1 条通过电子邮件向我们撤回您的同意外，您还可以通过https://security.google的谷歌安全设置页面撤销 Nightcat Digital Solutions (JM0919865-V) 对您个人数据的访问权限。 com/settings/security/permissions。</p>
                                <p><b>13.2 请求访问或更正个人数据 </b></p>
                                <p>13.2.1 如果您拥有我们的账户，您可以通过平台上的账户设置页面亲自访问和/或更正我们目前拥有或控制的您的个人数据。如果您没有我们的帐户，您可以通过向我们提交书面请求来请求访问和/或更正我们目前拥有或控制的您的个人数据。我们将需要您提供足够的信息来确定您的身份以及您的请求的性质，以便能够处理您的请求。因此，请通过发送电子邮件至 dpo.my@Nightcat Digital Solutions (JM0919865-V).com 向我们的个人数据保护官提交您的书面请求。 </p>
                                <p>13.2.2 我们可能会就处理和处理您访问您的个人数据的请求向您收取合理的费用。如果我们选择收费，我们将向您提供我们将收取的费用的书面估算。请注意，除非您同意支付费用，否则我们不需要回应或处理您的访问请求。 </p>
                                <p>13.2.3 我们保留根据隐私法规定拒绝更正您的个人数据的权利，如果他们要求和/或授权组织在规定的情况下拒绝更正个人数据。
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Question, Concerns Or Complaints? Contact Us",
                            BM: "SOALAN, KERISAUAN ATAU ADUAN? HUBUNGI KAMI",
                            CN: "问题、疑虑或投诉？联系我们"
                        }
                        description: {
                            EN: "
                                <p>14.1 If you have any questions or concerns about our privacy practices or your dealings with the Services, please do not hesitate to contact: help@support.shopee.com.my</p>
                                <p>14.2 If you have any complaint or grievance regarding how we are handling your personal data or about how we are complying with Privacy Laws, we welcome you to contact us with your complaint or grievance.</p>
                                <p>
                                    Please contact us through email with your complaint or grievance:<br>
                                    E-mail: dpo.my@shopee.com and Attention it to the 'Personal Data Protection Officer'.<br>
                                    Please send all legal notices to legal.my@shopee.com and Attention it to the 'General Counsel'.
                                </p>
                                <p>14.3 Where it is an email or a letter through which you are submitting a complaint, your indication at the subject header that it is a Privacy Law complaint would assist us in attending to your complaint speedily by passing it on to the relevant staff in our organisation to handle. For example, you could insert the subject header as “Privacy Complaint”.</p>
                                <p>We will certainly strive to deal with any complaint or grievance that you may have fairly and as soon as possible.</p>
                            ",
                            BM: "
                                <p>14.1 Jika anda mempunyai sebarang pertanyaan atau kebimbangan berkenaan dengan amalan privasi kami, kami amat mengalu-alukan anda untuk hubungi kami melalui e-mel di dpo.my@Nightcat Digital Solutions (JM0919865-V).com. </p>
                            ",
                            CN: "
                                <p>14.1 如果您对我们的隐私惯例有任何问题或疑虑，我们欢迎您通过电子邮件dpo.my@Nightcat Digital Solutions (JM0919865-V).com与我们联系</p>
                            "
                        }
                    }
                ]
            },
            {
                id: "#returnRefund"
                title: {
                    EN: "return & refund",
                    BM: "Polisi Bayaran Balik dan Pemulangan",
                    CN: "退款和退货政策"
                },
                lastUpdate: {
                    EN: "13th August 2021",
                    BM: "13 Ogos 2021",
                    CN: "2021 年 8 月 13 日"
                }
                content: [
                    {
                        title: {
                            EN: "Application for Returns/Refunds",
                            BM: "Permohonan Pemulangan/Pemulangan",
                            CN: "退货/退款申请"
                        }
                        description: {
                            EN: "
                                <p>Subject to the terms and conditions in this Refunds and Return Policy and the Terms of Service, Buyer may apply for return of the purchased items (“Item”) and/or refund prior to the expiry of the Nightcat Guarantee Period as stated in the Terms of Service.</p>
                                <p>Nightcat Guarantee is a service provided by Nightcat, on User’s request, to assist Users in dealing with certain conflicts which may arise during the course of a transaction. Users may communicate with each other privately to resolve their differences or approach their relevant local authorities to assist them in overcoming any dispute prior, during or after using Nightcat Guarantee.</p>
                            ",
                            BM: "
                                <p>Tertakluk kepada terma dan syarat dalam Polisi Pemulangan dan Pemulangan ini dan Syarat Perkhidmatan, Pembeli boleh memohon untuk memulangkan item yang dibeli (“Item”) dan/atau bayaran balik sebelum tamat tempoh Shopee Tempoh Jaminan seperti yang dinyatakan dalam Syarat Perkhidmatan . Jaminan Shopee ialah perkhidmatan yang disediakan oleh Shopee, atas permintaan Pengguna, untuk membantu Pengguna dalam menangani konflik tertentu yang mungkin timbul semasa transaksi. </p>
                                <p>Pengguna boleh berkomunikasi antara satu sama lain secara peribadi untuk menyelesaikan perbezaan mereka atau mendekati pihak berkuasa tempatan mereka yang berkaitan untuk membantu mereka mengatasi sebarang pertikaian sebelum, semasa atau selepas menggunakan Jaminan Shopee. </p>
                            ",
                            CN: "
                                <p>根据本退款和退货政策以及服务条款中的条款和条件，买家可以在 Nightcat Digital Solutions (JM0919865-V) 到期前申请退货和/或退款服务条款中规定的保修期。 虾皮保证是虾皮应用户要求提供的一项服务，用于协助用户处理交易过程中可能出现的某些冲突。</p>
                                <p>用户可以私下相互沟通以解决分歧，或联系当地相关部门帮助他们解决在使用 Nightcat Digital Solutions (JM0919865-V) Guarantee 之前、期间或之后的任何争议。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Application for the Return of an Item",
                            BM: "Permohonan Pemulangan Barangan"
                            CN: "退货申请"
                        }
                        description: {
                            EN: "
                                <p>Buyer may only apply for the refund and/or return of the Item in the following circumstances:</p>
                                <ul>
                                    <li>The Item has not been received by Buyer</li>
                                    <li>The Item was defective and/or damaged on delivery</li>
                                    <li>Seller has delivered an Item that does not match the agreed specification (e.g. wrong size, colour, etc.) to Buyer</li>
                                    <li>The Item delivered to Buyer is materially different from the description provided by Seller in the listing of the Item or</li>
                                    <li>By way of private agreement with Seller and Seller must send his/her confirmation to Nightcat confirming such agreement.</li>
                                </ul>
                                <p>Buyer’s application must be submitted via the Nightcat mobile app.</p>
                                <p>Please note that, if required by Nightcat, Buyer must ship the Item to a location designated by Nightcat within ten (10) calendar days after the return request is raised.</p>
                                <p>The approval of your request for refund and return will be made by Nightcat in its sole discretion. Buyer acknowledges and agrees that Nightcat’s decision is final, conclusive and binding, and covenants and agrees that it will not bring suit or otherwise assert any claim against Nightcat or its affiliates in relation to such decision.</p>
                                <p>In the event where Buyer has commenced legal action against Seller, Buyer may provide the formal notification from the appropriate authority to Nightcat to request Nightcat to continue to hold the purchase monies until a formal determination is available. Nightcat will, at its sole and absolute discretion, determine whether it is necessary to continue to hold such purchase monies.</p>
                            ",
                            BM: "
                                <p>Pembeli hanya boleh memohon bayaran balik dan/atau pemulangan Item dalam keadaan berikut:</p>
                                <ul>
                                    <li>Item belum diterima oleh Pembeli;</li>
                                    <li>Item tersebut rosak dan/atau rosak semasa penghantaran;</li>
                                    <li>Penjual telah menghantar Item yang tidak sepadan dengan spesifikasi yang dipersetujui (cth salah saiz, warna, dll.) kepada Pembeli;</li>
                                    <li>Item yang dihantar kepada Pembeli adalah berbeza secara material daripada penerangan yang diberikan oleh Penjual dalam penyenaraian Item; atau</li>
                                    <li>Melalui perjanjian persendirian dengan Penjual dan Penjual mesti menghantar pengesahannya kepada Shopee yang mengesahkan perjanjian tersebut.</li>
                                </ul>
                                <p>Permohonan pembeli hendaklah dihantar melalui aplikasi mudah alih Shopee.</p>
                                <p>Sila ambil perhatian bahawa, jika diperlukan oleh Shopee, Pembeli mesti menghantar Item ke lokasi yang ditetapkan oleh Shopee dalam tempoh sepuluh (10) hari kalendar selepas permintaan pemulangan dibangkitkan.</p>
                                <p>Kelulusan permintaan anda untuk bayaran balik dan pemulangan akan dibuat oleh Shopee mengikut budi bicara mutlaknya. Pembeli mengakui dan bersetuju bahawa keputusan Shopee adalah muktamad, konklusif dan mengikat, dan bersetuju dan bersetuju bahawa ia tidak akan membawa saman atau sebaliknya menuntut sebarang tuntutan terhadap Shopee atau ahli gabungannya berhubung dengan keputusan tersebut.</p>
                                <p>Sekiranya Pembeli telah memulakan tindakan undang-undang terhadap Penjual, Pembeli boleh memberikan pemberitahuan rasmi daripada pihak berkuasa yang berkenaan kepada Shopee untuk meminta Shopee terus memegang wang pembelian sehingga penentuan rasmi tersedia. Shopee akan, mengikut budi bicara mutlaknya, menentukan sama ada perlu untuk terus memegang wang pembelian tersebut.</p>
                            ",
                            CN: "
                                <p>买方只能在以下情况下申请退款和/或退货：</p>
                                <ul>
                                    <li>买方未收到该物品；</li>
                                    <li>商品在交付时有缺陷和/或损坏；</li>
                                    <li>卖方向买方交付的物品与商定的规格（例如错误的尺寸、颜色等）不符；</li>
                                    <li>交付给买方的物品与卖方在物品清单中提供的描述存在重大差异；或</li>
                                    <li>通过与卖家的私下协议，卖家必须将他/她的确认发送给 Nightcat Digital Solutions (JM0919865-V) 以确认此类协议。</li>
                                </ul>
                                <p>请注意，如果 Nightcat Digital Solutions (JM0919865-V) 要求，买家必须在提出退货请求后的十 (10) 个日历日内将商品运送到 Nightcat Digital Solutions (JM0919865-V) 指定的地点。</p>
                                <p>Nightcat Digital Solutions (JM0919865-V) 将自行决定是否批准您的退款和退货请求。买方承认并同意 Nightcat Digital Solutions (JM0919865-V) 的决定是最终的、决定性的和具有约束力的，并且承诺并同意不会就此类决定对 Nightcat Digital Solutions (JM0919865-V) 或其关联公司提起诉讼或以其他方式提出任何索赔。</p>
                                <p>如果买方已开始对卖方采取法律行动，买方可以向 Nightcat Digital Solutions (JM0919865-V) 提供有关当局的正式通知，要求 Nightcat Digital Solutions (JM0919865-V) 继续持有购买款项，直至获得正式决定。Nightcat Digital Solutions (JM0919865-V) 将自行决定是否有必要继续持有此类购买款项。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Rights of Sellers",
                            BM: "Hak Penjual Biasa",
                            CN: "普通卖家的权利"
                        }
                        description: {
                            EN: "
                                <p>For the purpose of this Refund and Return Policy</p>
                                <p>When Nightcat receives an application from Buyer for the return of the Item and/or refund, Nightcat will notify Seller in writing. Seller may respond to Buyer’s application according to the steps provided by Nightcat in the written notification. Seller must respond within the time-frame stipulated in the written notification (the “Stipulated Period”). Should Nightcat not hear from Seller within the Stipulated Period, Nightcat will assume that Seller has no response to Buyer’s application and will proceed to assess Buyer’s application without further notice to Seller. Nightcat will review each Seller’s response on a case-by-case basis and, in its sole discretion, determine whether Buyer’s application may be successful against the circumstances stated by Seller.</p>
                            ",
                            BM: "
                                <p>Untuk tujuan Polisi Bayaran Balik dan Pemulangan ini, Penjual Biasa ialah Penjual yang bukan Penjual Pusat Beli-belah atau Penjual Pilihan.</p>
                                <p>Apabila Shopee menerima permohonan daripada Pembeli untuk pemulangan Item dan/atau bayaran balik, Shopee akan memberitahu Penjual secara bertulis. Penjual boleh membalas permohonan Pembeli mengikut langkah-langkah yang disediakan oleh Shopee dalam pemberitahuan bertulis. Penjual mesti bertindak balas dalam tempoh masa yang ditetapkan dalam pemberitahuan bertulis ('Tempoh Ditetapkan'). Sekiranya Shopee tidak mendengar daripada Penjual dalam Tempoh Yang Ditetapkan, Shopee akan menganggap bahawa Penjual tidak mempunyai maklum balas terhadap permohonan Pembeli dan akan meneruskan untuk menilai permohonan Pembeli tanpa notis lanjut kepada Penjual. Shopee akan menyemak setiap maklum balas Penjual berdasarkan kes demi kes dan, mengikut budi bicara mutlaknya, menentukan sama ada permohonan Pembeli mungkin berjaya berdasarkan keadaan yang dinyatakan oleh Penjual.</p>
                            ",
                            CN: "
                                <p>就本退款和退货政策而言，普通卖家是指非商城卖家或首选卖家的卖家。</p>
                                <p>当 Nightcat Digital Solutions (JM0919865-V) 收到买家的退货和/或退款申请时，Nightcat Digital Solutions (JM0919865-V) 将书面通知卖家。卖家可根据虾皮在书面通知中提供的步骤回应买家的申请。卖方必须在书面通知规定的时间范围内（“规定期限”）作出回应。如果虾皮在规定期限内没有收到卖方的消息，虾皮将假定卖方对买方的申请没有回应，并将继续评估买方的申请，恕不另行通知卖方。Nightcat Digital Solutions (JM0919865-V) 将逐案审查每个卖家的回复，并自行决定根据卖家所述的情况确定买家的申请是否可能成功。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Condition of Returning Item",
                            BM: "Keadaan Barang yang Dikembalikan",
                            CN: "退货条件"
                        }
                        description: {
                            EN: "
                                <p>To enjoy a hassle-free experience when returning the Item, Buyer should ensure that the Item, including any complimentary items such as accessories that come with the Item, must be returned to Seller in the condition received by Buyer on delivery. We will recommend Buyer to take a photo of the Item upon receipt.</p>
                            ",
                            BM: "
                                <p>Untuk menikmati pengalaman tanpa kerumitan semasa memulangkan Item, Pembeli hendaklah memastikan Item tersebut, termasuk sebarang item percuma seperti aksesori yang disertakan bersama Item, mesti dikembalikan kepada Penjual dalam keadaan diterima oleh Pembeli semasa penghantaran. Kami akan mengesyorkan Pembeli untuk mengambil gambar Item selepas menerima.</p>
                            ",
                            CN: "
                                <p>为了在退回物品时享受无忧体验，买方应确保该物品，包括任何免费物品，如该物品随附的配件，必须以买方在交付时收到的状态退回给卖方。我们会建议买家在收到物品时拍下照片。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Liability of Product Return Shipping Fee",
                            BM: "Liabiliti Yuran Penghantaran Pemulangan Produk",
                            CN: "产品退货运费的责任"
                        }
                        description: {
                            EN: "
                                <ol>
                                    <li>In the scenario of an unforeseen error from the seller's end (i.e - damaged, faulty or wrong product delivered to the buyer), the seller will bear buyer's return shipping fee.</li>
                                    <li>In the scenario of the buyer's change of mind, buyer shall get seller's consent prior to the return request and buyer will bear the return shipping fee.</li>
                                    <li>In the scenario where both seller-buyer disputing the party liable for the return shipping fee, Nightcat at its sole discretion will determine the party liable for the return shipping fee.</li>
                                </ol>
                            "
                            BM: "
                                <ol>
                                    <li>Dalam senario kesilapan yang tidak diduga daripada pihak penjual (iaitu - produk rosak, rosak atau salah dihantar kepada pembeli), penjual akan menanggung kos penghantaran pemulangan pembeli. </li>
                                    <li>Dalam senario perubahan fikiran pembeli, pembeli hendaklah mendapatkan kebenaran penjual sebelum permintaan pemulangan dan pembeli akan menanggung kos penghantaran pemulangan. </li>
                                    <li>Dalam senario di mana kedua-dua penjual-pembeli mempertikaikan pihak yang bertanggungjawab untuk yuran penghantaran pemulangan, Shopee mengikut budi bicara mutlaknya akan menentukan pihak yang bertanggungjawab untuk yuran penghantaran pemulangan.</li>
                                </ol>
                            ",
                            CN: "
                                <ol>
                                    <li>在卖方发生不可预见的错误的情况下（即 - 损坏、有缺陷或错误的产品交付给买方），卖方将承担买方的退货运费。 </li>
                                    <li>在买家改变主意的情况下，买家在提出退货要求之前应征得卖家的同意，并由买家承担退货运费。 </li>
                                    <li>在买卖双方对退货运费责任方发生争议的情况下，Nightcat Digital Solutions (JM0919865-V) 将自行决定承担退货运费的一方。</li>
                                </ol>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Refunds",
                            BM: "Bayaran Balik",
                            CN: "退款"
                        }
                        description: {
                            EN: "
                                <p>Buyer will only be refunded after Nightcat has received the confirmation from Seller that Seller has received the returned Item. In the event where Nightcat does not hear from Seller within a specified time, Nightcat will be at liberty to refund the applicable sum to Buyer without further notice to Seller. For more information on Seller’s response time limits, please click this link. The refund will be made to Buyer’s credit/debit card or designated bank account, whichever is applicable.</p>
                            "
                            BM: "
                                <p>Pembeli hanya akan dipulangkan selepas Shopee menerima pengesahan daripada Penjual bahawa Penjual telah menerima Item yang dikembalikan. Sekiranya Shopee tidak mendapat maklum balas daripada Penjual dalam masa yang ditetapkan, Shopee akan bebas untuk membayar balik jumlah yang berkenaan kepada Pembeli tanpa notis lanjut kepada Penjual. Bayaran balik akan dibuat kepada kad kredit/debit Pembeli atau akaun bank yang ditetapkan, yang mana berkenaan. </p>
                            ",
                            CN: "
                                <p>只有在 Nightcat Digital Solutions (JM0919865-V) 收到卖家确认卖家已收到退回的商品后，买家才会获得退款。如果 Nightcat Digital Solutions (JM0919865-V) 在指定时间内没有收到卖方的消息，Nightcat Digital Solutions (JM0919865-V) 将有权将适用的款项退还给买方，而无需另行通知卖方。退款将退回到买方的信用卡/借记卡或指定的银行账户，以适用者为准。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Communication Between Buyer and Seller",
                            BM: "Komunikasi Antara Pembeli dan Penjual",
                            CN: "买卖双方的沟通"
                        }
                        description: {
                            EN : "
                                <p>Nightcat encourages Users to communicate with each other in the event where problem arises in a transaction. As Nightcat is a platform for Users to conduct trading, Buyer should contact Seller directly for any issue relating to the Item purchased.</p>
                            ",
                            BM: "
                                <p>Shopee menggalakkan Pengguna untuk berkomunikasi antara satu sama lain sekiranya masalah timbul dalam transaksi. Memandangkan Shopee ialah platform untuk Pengguna menjalankan dagangan, Pembeli hendaklah menghubungi Penjual secara terus untuk sebarang isu berkaitan Item yang dibeli.</p>
                            ",
                            CN: "
                                <p>Nightcat Digital Solutions (JM0919865-V)鼓励用户在交易出现问题时相互沟通。由于 Nightcat Digital Solutions (JM0919865-V) 是供用户进行交易的平台，因此买家应直接联系卖家解决与所购商品相关的任何问题</p>
                            "
                        }
                    }
                ]
            },
            {
                id: "#shippingPolicy"
                title: {
                    EN: "SHIPPING POLICY",
                    BM: "POLISI PENGHANTARAN",
                    CN: "运输政策"
                }
                lastUpdate: {
                    EN: "29th October 2021",
                    BM: "29 Oktober 2021",
                    CN: "2021 年 10 月 29 日"
                },
                content: [
                    {
                        title: {
                            EN: "SHIPPING POLICY",
                            BM: "POLISI PENGHANTARAN",
                            CN: "运输政策"
                        },
                        description: {
                            EN: "
                                <ol>
                                    <li>Nightcat Digital Solutions (JM0919865-V) will only send online orders to Peninsular Malaysia, Sabah and Sarawak address. We do not deliver to P.O. Box address or any international address.</li>
                                    <li>All delivery for standard, express and Click & Collect are only applicable for orders below 30kg (weight or volumetric, whichever greater). Please place a separate order if your total cart exceeded this limit.</li>
                                    <li>Your paid orders will be shipped out from our warehouse within 1 to 3 working day(s). Orders placed on Friday after 12:00 pm and over the weekend, will be processed on the following Monday.</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) reserves the right to amend this policy at any time without prior notice.</li>
                                </ol>
                            ",
                            BM: "
                                <ol>
                                    <li>ENCIK. Nightcat Digital Solutions (JM0919865-V) hanya akan menghantar pesanan dalam talian ke alamat Semenanjung Malaysia, Sabah dan Sarawak. Kami tidak menghantar ke alamat Peti Surat atau mana-mana alamat antarabangsa.</li>
                                    <li>Semua penghantaran untuk standard, ekspres dan Klik & Kumpul hanya terpakai untuk pesanan di bawah 30kg (berat atau isipadu, yang mana lebih besar). Sila buat pesanan berasingan jika jumlah troli anda melebihi had ini.</li>
                                    <li>Pesanan berbayar anda akan dihantar keluar dari gudang kami dalam masa 1 hingga 3 hari bekerja. Pesanan yang dibuat pada hari Jumaat selepas jam 12:00 tengahari dan pada hujung minggu, akan diproses pada hari Isnin berikutnya.</li>
                                    <li>ENCIK Nightcat Digital Solutions (JM0919865-V) berhak untuk meminda polisi ini pada bila-bila masa tanpa notis terlebih dahulu.</li>
                                </ol>
                            ",
                            CN: "
                                <ol>
                                    <li>先生。Nightcat Digital Solutions (JM0919865-V)只会将在线订单发送到马来西亚半岛、沙巴和砂拉越地址。我们不送货到邮政信箱地址或任何国际地址。</li>
                                    <li>标准、快递和点击取货的所有交付仅适用于30公斤以下的订单（重量或体积，以较大者为准）。如果您的购物车总数超过此限制，请单独下订单。</li>
                                    <li>您支付的订单将在 1 到 3 个工作日内从我们的仓库运出。周五中午 12:00 之后和周末的订单将在下周一处理。</li>
                                    <li>先生。Nightcat Digital Solutions (JM0919865-V)保留随时修改此政策的权利，恕不另行通知。</li>
                                </ol>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "STANDARD DELIVERY",
                            BM: "PENGHANTARAN BIASA",
                            CN: "标准运送"
                        },
                        description: {
                            EN: "
                                <ol>
                                    <li>In Standard Delivery, our logistic partner with their best effort will deliver your parcel within 2 to 5 working days for Peninsular Malaysia and 5 to 8 working days for Sabah & Sarawak. Delivery to remote areas may require additional of 2 to 3 working days.</li>
                                    <li>During peak season / festive periods, delivery may take longer time. We advise you to place order at least 2 weeks in advance before festive periods such as Hari Raya, Chinese New Year, Deepavali, etc to avoid any late shipment.</li>
                                    <li>At the time of delivery, you are required to validate the parcel by providing your signature/confirmation to our logistic partner as a proof of delivery. If the packaging is tempered, please check the contents of the parcel and you may refuse to accept the parcel if the content is damaged.</li>
                                    <li>If the parcel was unable to be delivered to you after 2 attempts, or if you did not pick up the parcel at a nearby location as instructed to the logistic partner, the order will be forfeited and the parcel will be returned to our warehouse.</li>
                                </ol>
                                <p><b>Our standard delivery rate:</b></p>
                                <p>Shipping Fee NinjaVan - Nightcat Digital Solutions (JM0919865-V)</p> 
                            ",
                            BM: "
                                <ol>
                                    <li>Dalam Standard Delivery, rakan kongsi logistik kami dengan usaha terbaik mereka akan menghantar bungkusan anda dalam masa 2 hingga 5 hari bekerja untuk Semenanjung Malaysia dan 5 hingga 8 hari bekerja untuk Sabah & Sarawak. Penghantaran ke kawasan terpencil mungkin memerlukan tambahan 2 hingga 3 hari bekerja.</li>
                                    <li>Semasa musim puncak / tempoh perayaan, penghantaran mungkin mengambil masa yang lebih lama. Kami menasihatkan anda untuk membuat tempahan sekurang-kurangnya 2 minggu lebih awal sebelum tempoh perayaan seperti Hari Raya, Tahun Baru Cina, Deepavali, dan lain-lain untuk mengelakkan sebarang penghantaran lewat.</li>
                                    <li>Semasa penghantaran, anda dikehendaki mengesahkan bungkusan dengan memberikan tandatangan/pengesahan anda kepada rakan logistik kami sebagai bukti penghantaran. Jika pembungkusan itu dibaja, sila semak kandungan bungkusan itu dan anda boleh menolak untuk menerima bungkusan itu jika kandungannya rosak.</li>
                                    <li>Jika bungkusan tidak dapat dihantar kepada anda selepas 2 kali percubaan, atau jika anda tidak mengambil bungkusan di lokasi berdekatan seperti yang diarahkan kepada rakan logistik, pesanan akan dibatalkan dan bungkusan akan dikembalikan ke gudang kami .</li>
                                </ol>
                                <p><b>Kadar penghantaran standard kami:</b></p>
                                <p>Yuran Penghantaran NinjaVan - Nightcat Digital Solutions (JM0919865-V)</p>
                            ",
                            CN: "
                                <ol>
                                    <li>在标准交付中，我们的物流合作伙伴将尽最大努力在马来西亚半岛 2 至 5 个工作日内交付您的包裹，在沙巴和砂拉越 5 至 8 个工作日内交付您的包裹。运送到偏远地区可能需要额外的 2 到 3 个工作日。</li>
                                    <li>在旺季/节日期间，交货可能需要更长的时间。我们建议您在开斋节、农历新年、屠妖节等节日前至少提前 2 周下订单，以避免延迟发货。</li>
                                    <li>在交付时，您需要通过向我们的物流合作伙伴提供您的签名/确认作为交付证明来验证包裹。如果包装是钢化的，请检查包裹内的物品，如果内容损坏，您可以拒绝接受包裹。</li>
                                    <li>如果2次后仍未能送达，或者您没有按照物流合作伙伴的指示到附近取货，订单将被没收，包裹将退回我们的仓库.</li>
                                </ol>
                                <p><b>我们的标准交货率：</b></p>
                                <p>运费 NinjaVan - Nightcat Digital Solutions (JM0919865-V)</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "DELIVERY PROMOTION FOR PURCHASES ABOVE RM60 (PENINSULAR MALAYSIA ONLY)",
                            BM: "PROMOSI PENGHANTARAN UNTUK PEMBELIAN RM60 KE ATAS (Semenanjung MALAYSIA SAHAJA)",
                            CN: "购买超过 RM60 的送货促销（仅限马来西亚半岛)"
                        },
                        description: {
                            EN: "
                                <ol>
                                    <li>Get FREE DELIVERY within Peninsular Malaysia when you purchase above RM60.</li>
                                    <li>Applicable for Standard Delivery option and maximum parcel weight of 10kg.</li>
                                </ol>
                            ",
                            BM: "
                                <ol>
                                    <li>Dapatkan PENGHANTARAN PERCUMA dalam Semenanjung Malaysia apabila anda membeli melebihi RM60.</li>
                                    <li>Berkenaan untuk pilihan Penghantaran Standard dan berat bungkusan maksimum 10kg.</li>
                                </ol>
                            ",
                            CN: "
                                <ol>
                                    <li>购买RM60以上可获马来西亚半岛内免费送货服务。</li>
                                    <li>适用于标准派送选项，最大包裹重量为 10 公斤。</li>
                                </ol>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "CLICK & COLLECT",
                            BM: "KLIK & KUMPUL",
                            CN: "点击并收集"
                        },
                        description: {
                            EN: "
                                <ol>
                                    <li>You can now purchase online and get the items delivered to your nearest Nightcat Digital Solutions (JM0919865-V) store.</li>
                                    <li>With minimum spend of RM30, you can enjoy FREE DELIVERY up to 30kg with Click & Collect service. More economical than standard delivery, this is perfect for budget conscious consumers who are also looking to buy more or in bulk.</li>
                                    <li>Currently available at selected 86 Nightcat Digital Solutions (JM0919865-V) stores in Peninsular Malaysia (click here to see the store list), located conveniently in the major cities within your reach. The delivery lead time to the selected Nightcat Digital Solutions (JM0919865-V) store is within 2 to 5 working days.</li>
                                    <li>Once the parcel arrived at the store, you will be notified via email for collection. You are required to bring along the notification email for verification. Both softcopy and printed copy are acceptable. Any representatives can collect the parcel, as long as they are able to present the notification email to the Nightcat Digital Solutions (JM0919865-V) store staff.</li>
                                    <li>The parcel must be collected within 7 calendar days after it has arrived at the store. Thereafter, the order will be forfeited and the parcel will be returned to our warehouse.</li>
                                </ol>
                            ",
                            BM: "
                                <ol>
                                    <li>Anda kini boleh membeli secara dalam talian dan mendapatkan barangan dihantar ke kedai Nightcat Digital Solutions (JM0919865-V) berhampiran anda.</li>
                                    <li>Dengan perbelanjaan minimum RM30, anda boleh menikmati PENGHANTARAN PERCUMA sehingga 30kg dengan perkhidmatan Click & Collect. Lebih menjimatkan daripada penghantaran standard, ini sesuai untuk pengguna yang mementingkan bajet yang juga ingin membeli lebih banyak atau pukal.</li>
                                    <li>Kini boleh didapati di 86 Kedai Nightcat di Semenanjung Malaysia ( klik di sini untuk melihat senarai kedai ), terletak dengan mudah di bandar-bandar utama dalam jangkauan anda. Masa utama penghantaran kepada Kedai Nightcat adalah dalam masa 2 hingga 5 hari bekerja.</li>
                                    <li>Setelah bungkusan tiba di kedai, anda akan dimaklumkan melalui e-mel untuk pengambilan. Anda dikehendaki membawa bersama e-mel pemberitahuan untuk pengesahan. Kedua-dua salinan lembut dan salinan bercetak boleh diterima. Mana-mana wakil boleh mengambil bungkusan tersebut, asalkan mereka dapat menyampaikan email pemberitahuan kepada kakitangan kedai Nightcat Digital Solutions (JM0919865-V).</li>
                                    <li>Bungkusan mesti diambil dalam tempoh 7 hari kalendar selepas ia sampai di kedai. Selepas itu, pesanan akan dibatalkan dan bungkusan akan dikembalikan ke gudang kami.</li>
                                </ol>
                            ",
                            CN: "
                                <ol>
                                    <li>您现在可以在线购买商品并将商品送到最近的 Nightcat Digital Solutions (JM0919865-V) 商店。</li>
                                    <li>消费满RM30，即可享有高达30kg 的Click & Collect 服务免费送货。这比标准交付更经济，非常适合同时希望购买更多或批量购买的精打细算的消费者。</li>
                                    <li>目前在选定的 86 MR 上可用。位于马来西亚半岛的Nightcat商店（点击此处查看商店列表），位于您触手可及的主要城市，交通便利。到所选 MR 的交货提前期。Nightcat 商店是在 2 到 5 个工作日内。</li>
                                    <li>包裹到达门店后，将通过电子邮件通知您取件。您需要携带通知电子邮件进行验证。软拷贝和印刷拷贝均可接受。任何代表都可以领取包裹，只要他们能够向 Nightcat Digital Solutions (JM0919865-V) 商店工作人员出示通知电子邮件即可。</li>
                                    <li>包裹必须在到达商店后的 7 个日历日内领取。此后，订单将被没收，包裹将退回我们的仓库。</li>
                                </ol>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "HOW TO TRACK YOUR ORDER",
                            BM: "BAGAIMANA MENJEJAK PESANAN ANDA",
                            CN: "如何追踪您的订单"
                        },
                        description: {
                            EN: "
                                <ol>
                                    <li>Please locate your tracking number (example: NIGHTCAT18000000000) in the delivery confirmation email or by logging into your registered user account.</li>
                                    <li>Alternatively, you can click here to check your parcel delivery status via our Nightcat Digital Solutions (JM0919865-V) delivery tracking website page. You may then enter your tracking number into our tracking field (the white colour empty field that is under these words - Track your Nightcat Digital Solutions (JM0919865-V) parcel) to view the status of your order delivery.</li>
                                    <li>Please take note that tracking numbers may take a few hours to be reflected in our tracking system after you have received the delivery confirmation email.</li>
                                </ol>
                                <p>If there is an unfortunate event of a delay, it will be reflected in our Nightcat Digital Solutions (JM0919865-V) tracking website. In the event that you have not received delivery updates within a week after receiving the confirmation email, please contact our customer service via email (<a href='mailto:ecom_helpdesk@nightcatdigitalsolutions.com'>ecom_helpdesk@nightcatdigitalsolutions.com</a>) for further assistance.</p>
                            ",
                            BM: "
                                <ol>
                                    <li>Sila cari nombor penjejakan anda (contoh:NIGHTCAT18000000000) dalam e-mel pengesahan penghantaran atau dengan log masuk ke akaun pengguna berdaftar anda.</li>
                                    <li>Sebagai alternatif, anda boleh klik di sini  untuk menyemak status penghantaran bungkusan anda melalui laman web penjejakan penghantaran Nightcat Digital Solutions (JM0919865-V) kami. Anda kemudian boleh memasukkan nombor penjejakan anda ke dalam medan penjejakan kami (medan kosong berwarna putih di bawah perkataan ini - Jejak bungkusan Nightcat anda) untuk melihat status penghantaran pesanan anda.</li>
                                    <li>Sila ambil perhatian bahawa nombor penjejakan mungkin mengambil masa beberapa jam untuk ditunjukkan dalam sistem penjejakan kami selepas anda menerima e-mel pengesahan penghantaran.</li>
                                </ol>
                                <p>Jika terdapat kejadian malang kelewatan, ia akan ditunjukkan dalam laman web penjejakan Nightcat Digital Solutions (JM0919865-V) kami. Sekiranya anda tidak menerima kemas kini penghantaran dalam masa seminggu selepas menerima e-mel pengesahan, sila hubungi perkhidmatan pelanggan kami melalui e-mel  (<a href='mailto:ecom_helpdesk@nightcatdigitalsolutions.com'>ecom_helpdesk@nightcatdigitalsolutions.com</a>) untuk mendapatkan bantuan lanjut.</p>
                            ",
                            CN: "
                                <ol>
                                    <li>请在送货确认电子邮件中或登录您的注册用户帐户找到您的跟踪编号（例如：NIGHTCAT18000000000）。</li>
                                    <li>或者，您可以单击此处 通过我们的 Nightcat Digital Solutions (JM0919865-V) 递送跟踪网站页面查看您的包裹递送状态。然后，您可以在我们的跟踪字段（这些字样下方的白色空白字段 - 跟踪您的 Nightcat 包裹）中输入您的跟踪编号，以查看您的订单交付状态。</li>
                                    <li>请注意，在您收到送货确认电子邮件后，追踪编号可能需要几个小时才能反映在我们的追踪系统中。</li>
                                </ol>
                                <p>如果发生不幸的延误事件，它将反映在我们的 Nightcat Digital Solutions (JM0919865-V) 跟踪网站上。在你还没有收到确认邮件后收到一个星期内交货更新的情况下，请通过电子邮件联系我们的客户服务 （<a href='mailto:ecom_helpdesk@nightcatdigitalsolutions.com'>ecom_helpdesk@nightcatdigitalsolutions.com</a>）以获得进一步援助</p>
                            "
                        }
                    },
                ]
            },
            {
                id: "#termsCondition"
                title: {
                    EN: "Terms of Service",
                    BM: "Syarat Perkhidmatan",
                    CN: "服务条款"
                }
                lastUpdate: {
                    EN: "22nd July 2021",
                    BM: "22 Julai 2021",
                    CN: "2021 年 7 月 22 日"
                },
                content: [
                    {
                        title: {
                            EN: "INTRODUCTION",
                            BM: "PENGENALAN",
                            CN: "介绍"
                        },
                        description: {
                            EN: "
                                <p>1.1 Welcome to the Nightcat Digital Solutions (JM0919865-V) platform (the 'Site'). Please read the following Terms of Service carefully before using this Site or opening a Nightcat Digital Solutions (JM0919865-V) account ('Account') so that you are aware of your legal rights and obligations with respect to Nightcat Digital Solutions (JM0919865-V) and its affiliates and subsidiaries (individually and collectively, 'Nightcat Digital Solutions (JM0919865-V)', 'we', 'us' or 'our'). The 'Services' we provide or make available include (a) the Site, (b) the services provided by the Site and by Nightcat Digital Solutions (JM0919865-V) client software made available through the Site, and (c) all information, linked pages, features, data, text, images, photographs, graphics, music, sounds, video (including live streams), messages, tags, content, programming, software, application services (including, without limitation, any mobile application services) or other materials made available through the Site or its related services ('Content'). Any new features added to or augmenting the Services are also subject to these Terms of Service. These Terms of Service govern your use of Services provided by Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>1.2 The Services include an online platform service that provides a place and opportunity for the sale of goods between the buyer (“Buyer”) and the seller (“Seller”) (collectively “you”, “Users” or “Parties”). The actual contract for sale is directly between Buyer and Seller and Nightcat Digital Solutions (JM0919865-V) is not a party to that or any other contract between Buyer and Seller and accepts no obligations in connection with any such contract. Parties to such transaction will be entirely responsible for the sales contract between them, the listing of goods, warranty of purchase and the like. Nightcat Digital Solutions (JM0919865-V) is not involved in the transaction between Users. Nightcat Digital Solutions (JM0919865-V) may or may not pre-screen Users or the Content or information provided by Users. Nightcat Digital Solutions (JM0919865-V) reserves the right to remove any Content or information posted by you on the Site in accordance to Section 6.4 herein. Nightcat Digital Solutions (JM0919865-V) cannot ensure that Users will actually complete a transaction.</p>
                                <p>1.3 Before becoming a User of the Site, you must read and accept all of the terms and conditions in, and linked to, these Terms of Service and you must consent to the processing of your personal data as described in the Privacy Policy linked hereto.</p>
                                <p>1.4 Nightcat Digital Solutions (JM0919865-V) reserves the right to change, modify, suspend or discontinue all or any part of this Site or the Services at any time or upon notice as required by local laws. Nightcat Digital Solutions (JM0919865-V) may release certain Services or their features in a beta version, which may not work correctly or in the same way the final version may work, and we shall not be held liable in such instances. Nightcat Digital Solutions (JM0919865-V) may also impose limits on certain features or restrict your access to parts of, or the entire, Site or Services in its sole discretion and without notice or liability.</p>
                                <p>1.5 Nightcat Digital Solutions (JM0919865-V) reserves the right to refuse to provide you access to the Site or Services or to allow you to open an Account for any reason.</p>
                                <p>BY USING Nightcat Digital Solutions (JM0919865-V) SERVICES OR OPENING AN ACCOUNT, YOU GIVE YOUR IRREVOCABLE ACCEPTANCE OF AND CONSENT TO THE TERMS OF THIS AGREEMENT, INCLUDING THOSE ADDITIONAL TERMS AND CONDITIONS AND POLICIES REFERENCED HEREIN AND/OR LINKED HERETO.</p>
                                <p>IF YOU DO NOT AGREE TO THESE TERMS, PLEASE DO NOT USE OUR SERVICES OR ACCESS THE SITE. IF YOU ARE UNDER THE AGE OF 18 OR THE LEGAL AGE FOR GIVING CONSENT HEREUNDER PURSUANT TO THE APPLICABLE LAWS IN YOUR COUNTRY (THE “LEGAL AGE”), YOU MUST GET PERMISSION FROM A PARENT OR LEGAL GUARDIAN TO OPEN AN ACCOUNT AND THAT PARENT OR LEGAL GUARDIAN MUST AGREE TO THE TERMS OF THIS AGREEMENT. IF YOU DO NOT KNOW WHETHER YOU HAVE REACHED THE LEGAL AGE, OR DO NOT UNDERSTAND THIS SECTION, PLEASE DO NOT CREATE AN ACCOUNT UNTIL YOU HAVE ASKED YOUR PARENT OR LEGAL GUARDIAN FOR HELP. IF YOU ARE THE PARENT OR LEGAL GUARDIAN OF A MINOR WHO IS CREATING AN ACCOUNT, YOU MUST ACCEPT THE TERMS OF THIS AGREEMENT ON THE MINOR'S BEHALF AND YOU WILL BE RESPONSIBLE FOR ALL USE OF THE ACCOUNT OR COMPANY SERVICES USING SUCH ACCOUNT, WHETHER SUCH ACCOUNT IS CURRENTLY OPEN OR CREATED LATER.</p>
                            ",
                            BM: "
                                <p>1.1 Selamat datang ke platform Nightcat Digital Solutions (JM0919865-V) ('Laman'). Sila baca Syarat Perkhidmatan berikut dengan teliti sebelum menggunakan Laman ini atau membuka akaun Nightcat Digital Solutions (JM0919865-V) ('Akaun') supaya anda mengetahui hak dan kewajipan undang-undang anda berkenaan dengan Nightcat Digital Solutions (JM0919865-V) dan sekutu dan anak syarikatnya (secara individu dan kolektif, 'Nightcat Digital Solutions (JM0919865-V)', 'kami', 'kami' atau 'kami'). 'Perkhidmatan' yang kami sediakan atau sediakan termasuk (a) Tapak, (b) perkhidmatan yang disediakan oleh Tapak dan oleh perisian pelanggan Nightcat Digital Solutions (JM0919865-V) yang disediakan melalui Tapak, dan (c) semua maklumat, halaman terpaut, ciri, data, teks, imej, gambar, grafik, muzik, bunyi, video (termasuk strim langsung), mesej, tag, kandungan, pengaturcaraan, perisian, perkhidmatan aplikasi (termasuk, tanpa had, sebarang perkhidmatan aplikasi mudah alih) atau bahan lain yang disediakan melalui Tapak atau perkhidmatan berkaitannya ('Kandungan'). Sebarang ciri baharu yang ditambahkan pada atau menambah Perkhidmatan juga tertakluk pada Syarat Perkhidmatan ini. Syarat Perkhidmatan ini mengawal penggunaan Perkhidmatan yang disediakan oleh Nightcat Digital Solutions (JM0919865-V) oleh anda.</p>
                                <p>1.2 Perkhidmatan termasuk perkhidmatan platform dalam talian yang menyediakan tempat dan peluang untuk penjualan barangan antara pembeli (“Pembeli”) dan penjual (“Penjual”) (secara kolektif “anda”, “Pengguna” atau “Pihak”). Kontrak sebenar untuk jualan adalah secara langsung antara Pembeli dan Penjual dan Nightcat Digital Solutions (JM0919865-V) bukan pihak kepada itu atau mana-mana kontrak lain antara Pembeli dan Penjual dan tidak menerima sebarang obligasi berkaitan dengan mana-mana kontrak tersebut. Pihak kepada transaksi tersebut akan bertanggungjawab sepenuhnya ke atas kontrak jualan antara mereka, penyenaraian barangan, waranti pembelian dan seumpamanya. Nightcat Digital Solutions (JM0919865-V) tidak terlibat dalam transaksi antara Pengguna. Nightcat Digital Solutions (JM0919865-V) mungkin atau tidak boleh menyaring Pengguna atau Kandungan atau maklumat yang disediakan oleh Pengguna. Nightcat Digital Solutions (JM0919865-V) berhak untuk mengalih keluar apa-apa Kandungan atau maklumat yang disiarkan oleh anda di Tapak mengikut Seksyen 6.4 di sini.</p>
                                <p>1.3 Sebelum menjadi Pengguna Tapak, anda mesti membaca dan menerima semua terma dan syarat dalam, dan dipautkan kepada, Syarat Perkhidmatan ini dan anda mesti bersetuju dengan pemprosesan data peribadi anda seperti yang diterangkan dalam Dasar Privasi yang dipautkan di sini.</p>
                                <p>1.4 Nightcat Digital Solutions (JM0919865-V) berhak untuk menukar, mengubah suai, menggantung atau menghentikan semua atau mana-mana bahagian Laman ini atau Perkhidmatan pada bila-bila masa atau atas notis seperti yang dikehendaki oleh undang-undang tempatan. Nightcat Digital Solutions (JM0919865-V) mungkin mengeluarkan Perkhidmatan tertentu atau ciri mereka dalam versi beta, yang mungkin tidak berfungsi dengan betul atau dengan cara yang sama versi akhir mungkin berfungsi, dan kami tidak akan bertanggungjawab dalam keadaan sedemikian. Nightcat Digital Solutions (JM0919865-V) juga boleh mengenakan had ke atas ciri tertentu atau menyekat akses anda kepada sebahagian daripada, atau keseluruhan, Tapak atau Perkhidmatan mengikut budi bicara mutlaknya dan tanpa notis atau liabiliti.</p>
                                <p>1.5 Nightcat Digital Solutions (JM0919865-V) berhak untuk menolak memberikan anda akses kepada Tapak atau Perkhidmatan atau membenarkan anda membuka Akaun atas sebarang sebab.</p>
                                <p>DENGAN MENGGUNAKAN PERKHIDMATAN Nightcat Digital Solutions (JM0919865-V) ATAU MEMBUKA AKAUN, ANDA MEMBERIKAN PENERIMAAN DAN PERSETUJUAN YANG TIDAK DAPAT BATAL ANDA TERHADAP SYARAT-SYARAT PERJANJIAN INI, TERMASUK TERMA DAN SYARAT TAMBAHAN DAN POLISI YANG DIRUJUKKAN DI SINI DAN/ATAU DIPAUTKAN DENGAN SINI.</p>
                                <p>JIKA ANDA TIDAK BERSETUJU DENGAN SYARAT INI, SILA JANGAN GUNAKAN PERKHIDMATAN KAMI ATAU AKSES LAMAN INI. JIKA ANDA BERUMUR DI BAWAH 18 ATAU UMUR SAH UNTUK MEMBERI PERSETUJUAN DI BAWAH INI MENURUT UNDANG-UNDANG YANG BERKENAAN DI NEGARA ANDA ('UMUR SAH'), ANDA MESTI MENDAPAT KEBENARAN DARIPADA IBU BAPA ATAU PENJAGA YANG SAH UNTUK MEMBUKA AKAUN DAN IBU BAPA ITU. PENJAGA YANG SAH MESTI BERSETUJU DENGAN SYARAT-SYARAT PERJANJIAN INI. JIKA ANDA TIDAK TAHU SAMA ADA ANDA TELAH MENCAPAI UMUR SAH, ATAU TIDAK FAHAM BAHAGIAN INI, SILA JANGAN BUAT AKAUN SEHINGGA ANDA TELAH MEMINTA BANTUAN IBU BAPA ATAU PENJAGA YANG SAH. JIKA ANDA IBU BAPA ATAU PENJAGA YANG SAH KEPADA SEORANG BAWAH BAWAH YANG MEMBUAT AKAUN, ANDA MESTI MENERIMA SYARAT-SYARAT PERJANJIAN INI BAGI PIHAK BAWAH TINGGI DAN ANDA AKAN BERTANGGUNGJAWAB UNTUK SEMUA PENGGUNAAN AKAUN ATAU PERKHIDMATAN SYARIKAT YANG MENGGUNAKAN AKAUN TERSEBUT,</p>
                            ",
                            CN: "
                                <p>1.1 欢迎来到 Nightcat Digital Solutions (JM0919865-V) 平台（“网站”）。在使用本网站或开设 Nightcat Digital Solutions (JM0919865-V) 帐户（“帐户”）之前，请仔细阅读以下服务条款，以便您了解您对 Nightcat Digital Solutions (JM0919865-V)的合法权利和义务及其附属公司和子公司（单独和统称“Nightcat Digital Solutions (JM0919865-V)”、“我们”、“我们”或“我们的”）。我们提供或提供的“服务”包括 (a) 网站，(b) 网站和通过网站提供的 Nightcat Digital Solutions (JM0919865-V) 客户端软件提供的服务，以及 (c) 所有信息、链接页面、功能、数据、文本、图像、照片、图形、音乐、声音、视频（包括实时流）、消息、标签、内容、编程、软件、应用程序服务（包括但不限于任何移动应用程序服务）或通过本网站或其相关服务提供的其他材料（“内容”）。添加到或增强服务的任何新功能也受这些服务条款的约束。这些服务条款管辖您对 Nightcat Digital Solutions (JM0919865-V) 提供的服务的使用。</p>
                                <p>1.2 服务包括为买方（“买方”）和卖方（“卖方”）（统称“您”、“用户”或“双方”）之间的商品销售提供场所和机会的在线平台服务。实际的销售合同是直接在买方和卖方之间签订的，Nightcat Digital Solutions (JM0919865-V) 不是该合同或买方和卖方之间的任何其他合同的一方，并且不接受与任何此类合同有关的任何义务。此类交易的各方将对其之间的销售合同、货物清单、购买保证等负全部责任。Nightcat Digital Solutions (JM0919865-V) 不参与用户之间的交易。Nightcat Digital Solutions (JM0919865-V) 可能会也可能不会预先筛选用户或用户提供的内容或信息。Nightcat Digital Solutions (JM0919865-V) 保留根据此处第 6.4 条删除您在本网站上发布的任何内容或信息的权利。</p>
                                <p>1.3 在成为本网站的用户之前，您必须阅读并接受这些服务条款中和与之相关的所有条款和条件，并且您必须同意按照此处链接的隐私政策中的描述处理您的个人数据。</p>
                                <p>1.4 Nightcat Digital Solutions (JM0919865-V) 保留根据当地法律的要求随时或在通知后更改、修改、暂停或终止本网站或服务的全部或任何部分的权利。Nightcat Digital Solutions (JM0919865-V) 可能会在测试版中发布某些服务或其功能，这些服务或功能可能无法正常工作或以与最终版本相同的方式工作，我们对此类情况不承担任何责任。Nightcat Digital Solutions (JM0919865-V) 还可以自行决定对某些功能施加限制或限制您访问部分或全部网站或服务，恕不另行通知或承担责任。</p>
                                <p>1.5 Nightcat Digital Solutions (JM0919865-V) 保留以任何理由拒绝让您访问本网站或服务或允许您开立账户的权利。</p>
                                <p>使用 Nightcat Digital Solutions (JM0919865-V) 服务或开设帐户，即表示您不可撤销地接受并同意本协议的条款，包括此处引用的和/或此处链接的附加条款和条件以及政策。</p>
                                <p>如果您不同意这些条款，请不要使用我们的服务或访问本网站。如果您未满 18 岁或根据您所在国家/地区的适用法律获得同意的法定年龄（“法定年龄”），您必须获得父母或法定监护人的许可才能开设账户，或者法定监护人必须同意本协议的条款。如果您不知道自己是否已达到法定年龄，或者不理解本部分，请在向您的父母或法定监护人寻求帮助之前不要创建帐户。如果您是创建账户的未成年人的父母或法定监护人，您必须代表该未成年人接受本协议的条款，并且您将对使用该账户的账户或公司服务的所有使用负责。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "PRIVACY",
                            BM: "PRIVASI",
                            CN: "隐私"
                        },
                        description: {
                            EN: "
                                <p>2.1 Your privacy is very important to us at Nightcat Digital Solutions (JM0919865-V). To better protect your rights we have provided the nightcatdigitalsolutions.com Privacy Policy to explain our privacy practices in detail. Please review the Privacy Policy to understand how Nightcat Digital Solutions (JM0919865-V) collects and uses the information associated with your Account and/or your use of the Services (the “User Information”). By using the Services or providing information on the Site, you:</p>
                                <ol type='i'>
                                    <li>consent to Nightcat Digital Solutions (JM0919865-V)'s collection, use, disclosure and/or processing of your Content, personal data and User Information as described in the Privacy Policy;</li>
                                    <li>agree and acknowledge that the proprietary rights of your User Information are jointly owned by you and Nightcat Digital Solutions (JM0919865-V); and</li>
                                    <li>shall not, whether directly or indirectly, disclose your User Information to any third party, or otherwise allow any third party to access or use your User Information, without Nightcat Digital Solutions (JM0919865-V)’s prior written consent.</li>
                                </ol>
                                <p>2.2 Users in possession of another User’s personal data through the use of the Services (the “Receiving Party”) hereby agree that, they will (i) comply with all applicable personal data protection laws with respect to any such data; (ii) allow the User whose personal data the Receiving Party has collected (the “Disclosing Party”) to remove his or her data so collected from the Receiving Party’s database; and (iii) allow the Disclosing Party to review what information have been collected about them by the Receiving Party, in each case of (ii) and (iii) above, in compliance with and where required by applicable laws.</p>
                            ",
                            BM: "
                                <p>2.1 Privasi anda sangat penting bagi kami di Nightcat Digital Solutions (JM0919865-V). Untuk melindungi hak anda dengan lebih baik, kami telah menyediakan Dasar Privasi nightcatdigitalsolutions.com untuk menerangkan amalan privasi kami secara terperinci. Sila semak Dasar Privasi untuk memahami cara Nightcat Digital Solutions (JM0919865-V) mengumpul dan menggunakan maklumat yang dikaitkan dengan Akaun anda dan/atau penggunaan Perkhidmatan anda ('Maklumat Pengguna'). Dengan menggunakan Perkhidmatan atau menyediakan maklumat di Tapak, anda:</p>
                                <ol type='i'>
                                    <li>bersetuju dengan pengumpulan, penggunaan, pendedahan dan/atau pemprosesan Kandungan, data peribadi dan Maklumat Pengguna anda seperti yang diterangkan dalam Dasar Privasi oleh Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>bersetuju dan mengakui bahawa hak proprietari Maklumat Pengguna anda dimiliki bersama oleh anda dan Nightcat Digital Solutions (JM0919865-V); dan</li>
                                    <li>tidak akan, sama ada secara langsung atau tidak langsung, mendedahkan Maklumat Pengguna anda kepada mana-mana pihak ketiga, atau sebaliknya membenarkan mana-mana pihak ketiga mengakses atau menggunakan Maklumat Pengguna anda, tanpa kebenaran bertulis Nightcat Digital Solutions (JM0919865-V) terlebih dahulu.</li>
                                </ol>
                                <p>2.2 Pengguna yang memiliki data peribadi Pengguna lain melalui penggunaan Perkhidmatan (“Pihak Penerima”) dengan ini bersetuju bahawa, mereka akan (i) mematuhi semua undang-undang perlindungan data peribadi yang berkenaan dengan mana-mana data sedemikian; (ii) membenarkan Pengguna yang data peribadinya telah dikumpulkan oleh Pihak Penerima ('Pihak Pendedahan') untuk mengalih keluar datanya yang dikumpul daripada pangkalan data Pihak Penerima; dan (iii) membenarkan Pihak Pendedahan menyemak maklumat yang telah dikumpul tentang mereka oleh Pihak Penerima, dalam setiap kes (ii) dan (iii) di atas, dengan mematuhi dan jika dikehendaki oleh undang-undang yang terpakai.</p>
                            ",
                            CN: "
                                <p>2.1 在 Nightcat Digital Solutions (JM0919865-V)，您的隐私对我们非常重要。为了更好地保护您的权利，我们提供了 nightcatdigitalsolutions.com 隐私政策来详细解释我们的隐私惯例。请查看隐私政策以了解 Nightcat Digital Solutions (JM0919865-V) 如何收集和使用与您的帐户和/或您使用服务相关的信息（“用户信息”）。通过使用服务或在网站上提供信息，您：</p>
                                <ol type='i'>
                                    <li>同意 Nightcat Digital Solutions (JM0919865-V) 收集、使用、披露和/或处理您的内容、个人数据和用户信息，如隐私政策所述；</li>
                                    <li>同意并承认您的用户信息的所有权由您和虾皮共同拥有；和</li>
                                    <li>未经虾皮事先书面同意，不得直接或间接向任何第三方披露您的用户信息，或允许任何第三方访问或使用您的用户信息。</li>
                                </ol>
                                <p>2.2 通过使用服务而拥有其他用户个人数据的用户（“接收方”）在此同意，他们将 (i) 遵守与任何此类数据相关的所有适用的个人数据保护法律；(ii) 允许接收方收集其个人数据的用户（“披露方”）从接收方的数据库中删除其收集的数据；(iii) 允许披露方在上述 (ii) 和 (iii) 的每种情况下，按照适用法律的要求审查接收方收集的有关他们的信息。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "LIMITED LICENSE",
                            BM: "LESEN TERHAD",
                            CN: "有限许可"
                        },
                        description: {
                            EN: "
                                <p>3.1 Nightcat Digital Solutions (JM0919865-V) grants you a limited and revocable license to access and use the Services subject to the terms and conditions of these Terms of Service. All proprietary Content, trademarks, service marks, brand names, logos and other intellectual property (“Intellectual Property”) displayed in the Site are the property of Nightcat Digital Solutions (JM0919865-V) and where applicable, third party proprietors identified in the Site. No right or licence is granted directly or indirectly to any party accessing the Site to use or reproduce any Intellectual Property, and no party accessing the Site shall claim any right, title or interest therein. By using or accessing the Services you agree to comply with the copyright, trademark, service mark, and all other applicable laws that protect the Services, the Site and its Content. You agree not to copy, distribute, republish, transmit, publicly display, publicly perform, modify, adapt, rent, sell, or create derivative works of any portion of the Services, the Site or its Content. You also may not, without our prior written consent, mirror or frame any part or whole of the contents of this Site on any other server or as part of any other website. In addition, you agree that you will not use any robot, spider or any other automatic device or manual process to monitor or copy our Content, without our prior written consent (such consent is deemed given for standard search engine technology employed by Internet search websites to direct Internet users to this website).</p>
                                <p>3.2 You are welcome to link to the Site from your website, provided that your website does not imply any endorsement by or association with Nightcat Digital Solutions (JM0919865-V). You acknowledge that Nightcat Digital Solutions (JM0919865-V) may, in its sole discretion and at any time, discontinue providing the Services, either in part or as a whole, without notice.</p>
                            ",
                            BM: "
                                <p>3.1 Nightcat Digital Solutions (JM0919865-V) memberikan anda lesen terhad dan boleh dibatalkan untuk mengakses dan menggunakan Perkhidmatan tertakluk kepada terma dan syarat Syarat Perkhidmatan ini. Semua Kandungan proprietari, tanda dagangan, tanda perkhidmatan, nama jenama, logo dan harta intelek lain ('Harta Intelek') yang dipaparkan dalam Tapak adalah hak milik Nightcat Digital Solutions (JM0919865-V) dan jika berkenaan, pemilik pihak ketiga yang dikenal pasti dalam Tapak. Tiada hak atau lesen diberikan secara langsung atau tidak langsung kepada mana-mana pihak yang mengakses Laman ini untuk menggunakan atau mengeluarkan semula mana-mana Harta Intelek, dan tiada pihak yang mengakses Laman ini akan menuntut sebarang hak, hak milik atau kepentingan di dalamnya. Dengan menggunakan atau mengakses Perkhidmatan, anda bersetuju untuk mematuhi hak cipta, tanda dagangan, tanda perkhidmatan, dan semua undang-undang lain yang terpakai yang melindungi Perkhidmatan, Tapak dan Kandungannya. Anda bersetuju untuk tidak menyalin, mengedar, menerbitkan semula, menghantar, memaparkan secara terbuka, melaksanakan secara terbuka, mengubah suai, menyesuaikan, menyewa, menjual, atau mencipta karya terbitan mana-mana bahagian Perkhidmatan, Tapak atau Kandungannya. Anda juga tidak boleh, tanpa kebenaran bertulis kami terlebih dahulu, mencerminkan atau membingkai mana-mana bahagian atau keseluruhan kandungan Laman ini pada mana-mana pelayan lain atau sebagai sebahagian daripada mana-mana laman web lain. Di samping itu, anda bersetuju bahawa anda tidak akan menggunakan mana-mana robot, labah-labah atau mana-mana peranti automatik atau proses manual lain untuk memantau atau menyalin Kandungan kami, tanpa kebenaran bertulis kami terlebih dahulu (persetujuan tersebut dianggap diberikan untuk teknologi enjin carian standard yang digunakan oleh tapak web carian Internet untuk mengarahkan pengguna Internet ke laman web ini). cermin atau bingkai mana-mana bahagian atau keseluruhan kandungan Laman ini pada mana-mana pelayan lain atau sebagai sebahagian daripada mana-mana laman web lain. Di samping itu, anda bersetuju bahawa anda tidak akan menggunakan mana-mana robot, labah-labah atau mana-mana peranti automatik atau proses manual lain untuk memantau atau menyalin Kandungan kami, tanpa kebenaran bertulis kami terlebih dahulu (persetujuan tersebut dianggap diberikan untuk teknologi enjin carian standard yang digunakan oleh tapak web carian Internet untuk mengarahkan pengguna Internet ke laman web ini). cermin atau bingkai mana-mana bahagian atau keseluruhan kandungan Laman ini pada mana-mana pelayan lain atau sebagai sebahagian daripada mana-mana laman web lain. Di samping itu, anda bersetuju bahawa anda tidak akan menggunakan mana-mana robot, labah-labah atau mana-mana peranti automatik atau proses manual lain untuk memantau atau menyalin Kandungan kami, tanpa kebenaran bertulis kami terlebih dahulu (persetujuan tersebut dianggap diberikan untuk teknologi enjin carian standard yang digunakan oleh tapak web carian Internet untuk mengarahkan pengguna Internet ke laman web ini).</p>
                                <p>3.2 Anda dialu-alukan untuk memaut ke Tapak dari tapak web anda, dengan syarat tapak web anda tidak membayangkan sebarang pengesahan oleh atau persatuan dengan Nightcat Digital Solutions (JM0919865-V). Anda mengakui bahawa Nightcat Digital Solutions (JM0919865-V) boleh, mengikut budi bicara mutlaknya dan pada bila-bila masa, menghentikan penyediaan Perkhidmatan, sama ada sebahagian atau keseluruhannya, tanpa notis.</p>
                            ",
                            CN: "
                                <p>3.1 Nightcat Digital Solutions (JM0919865-V) 授予您有限且可撤销的许可，以根据这些服务条款的条款和条件访问和使用服务。本网站中显示的所有专有内容、商标、服务标志、品牌名称、徽标和其他知识产权（“知识产权”）均为 Nightcat Digital Solutions (JM0919865-V) 的财产，并且在适用的情况下，属于本网站中确定的第三方所有者。未直接或间接授予访问本网站的任何一方使用或复制任何知识产权的权利或许可，访问本网站的任何一方均不得主张其中的任何权利、所有权或利益。通过使用或访问服务，您同意遵守版权、商标、服务标志和所有其他保护服务、网站及其内容的适用法律。您同意不复制、分发、重新发布、传输、公开展示、公开执行、修改、改编、出租、出售或创建服务、网站或其内容的任何部分的衍生作品。未经我们事先书面同意，您也不得在任何其他服务器上或作为任何其他网站的一部分镜像或构建本网站的任何部分或全部内容。此外，您同意，未经我们事先书面同意，您不会使用任何机器人、蜘蛛或任何其他自动设备或手动程序来监视或复制我们的内容（对于 Internet 搜索网站采用的标准搜索引擎技术，视为已给予此类同意）将互联网用户引导至本网站）。在任何其他服务器上或作为任何其他网站的一部分镜像或构建本网站的任何部分或全部内容。此外，您同意，未经我们事先书面同意，您不会使用任何机器人、蜘蛛或任何其他自动设备或手动程序来监视或复制我们的内容（对于 Internet 搜索网站采用的标准搜索引擎技术，视为已给予此类同意）将互联网用户引导至本网站）。在任何其他服务器上或作为任何其他网站的一部分镜像或构建本网站的任何部分或全部内容。此外，您同意，未经我们事先书面同意，您不会使用任何机器人、蜘蛛或任何其他自动设备或手动程序来监视或复制我们的内容（对于 Internet 搜索网站采用的标准搜索引擎技术，视为已给予此类同意）将互联网用户引导至本网站）。</p>
                                <p>3.2 欢迎您从您的网站链接到本网站，前提是您的网站不暗示虾皮认可或与虾皮有任何关联。您承认 Nightcat Digital Solutions (JM0919865-V) 可自行决定随时停止提供部分或全部服务，恕不另行通知。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "SOFTWARE",
                            BM: "PERISIAN",
                            CN: "软件"
                        },
                        description: {
                            EN: "
                                <p>4.1 Any software provided by us to you as part of the Services is subject to the provisions of these Terms of Service. Nightcat Digital Solutions (JM0919865-V) reserves all rights to the software not expressly granted by Nightcat Digital Solutions (JM0919865-V) hereunder. Any third-party scripts or code, linked to or referenced from the Services, are licensed to you by the third parties that own such scripts or code, not by Nightcat Digital Solutions (JM0919865-V).</p>
                            ",
                            BM: "
                                <p>4.1 Sebarang perisian yang kami sediakan kepada anda sebagai sebahagian daripada Perkhidmatan adalah tertakluk kepada peruntukan Syarat Perkhidmatan ini. Nightcat Digital Solutions (JM0919865-V) mempunyai semua hak ke atas perisian yang tidak diberikan secara nyata oleh Nightcat Digital Solutions (JM0919865-V) di bawah ini. Sebarang skrip atau kod pihak ketiga, dipautkan atau dirujuk daripada Perkhidmatan, dilesenkan kepada anda oleh pihak ketiga yang memiliki skrip atau kod tersebut, bukan oleh Nightcat Digital Solutions (JM0919865-V).</p>
                            ",
                            CN: "
                                <p>4.1 我们作为服务的一部分向您提供的任何软件均受本服务条款的约束。虾皮保留对本软件未由虾皮在本协议项下明确授予的所有权利。链接到服务或从服务中引用的任何第三方脚本或代码均由拥有此类脚本或代码的第三方而非 Nightcat Digital Solutions (JM0919865-V) 授权给您</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "ACCOUNTS AND SECURITY",
                            BM: "AKAUN DAN KESELAMATAN",
                            CN: "账户和安全"
                        },
                        description: {
                            EN: "
                                <p>5.1 Some functions of our Services require registration for an Account by selecting a unique user identification ('User ID') and password, and by providing certain personal information. If you select a User ID that Nightcat Digital Solutions (JM0919865-V), in its sole discretion, finds offensive or inappropriate, Nightcat Digital Solutions (JM0919865-V) has the right to suspend or terminate your Account. You may be able to use your Account to gain access to other products, websites or services to which we have enabled access or with which we have tied up or collaborated. Nightcat Digital Solutions (JM0919865-V) has not reviewed, and assumes no responsibility for any third party content, functionality, security, services, privacy policies, or other practices of those products, websites or services. If you do so, the terms of service for those products, websites or services, including their respective privacy policies, if different from these Terms of Service and/or our Privacy Policy, may also apply to your use of those products, websites or services.</p>
                                <p>5.2 You agree to (a) keep your password confidential and use only your User ID and password when logging in, (b) ensure that you log out from your account at the end of each session on the Site, (c) immediately notify Nightcat Digital Solutions (JM0919865-V) of any unauthorised use of your Account, User ID and/or password, and (d) ensure that your Account information is accurate and up-to-date. You are fully responsible for all activities that occur under your User ID and Account even if such activities or uses were not committed by you. Nightcat Digital Solutions (JM0919865-V) will not be liable for any loss or damage arising from unauthorised use of your password or your failure to comply with this Section.</p>
                                <p>5.3 You agree that Nightcat Digital Solutions (JM0919865-V) may for any reason, in its sole discretion and with or without notice or liability to you or any third party, immediately terminate your Account and your User ID, remove or discard from the Site any Content associated with your Account and User ID, withdraw any subsidies offered to you, cancel any transactions associated with your Account and User ID, temporarily or in more serious cases permanently withhold any sale proceeds or refunds, and/or take any other actions that Nightcat Digital Solutions (JM0919865-V) deems necessary. Grounds for such actions may include, but are not limited to, actual or suspected (a) extended periods of inactivity, (b) violation of the letter or spirit of these Terms of Service, (c) illegal, fraudulent, harassing, defamatory, threatening or abusive behaviour (d) having multiple user accounts, (e) buying products on the Site for the purpose of commercial re-sale, (f) abnormal or excessive purchase of products from the same Seller or related group of Sellers, (g) voucher abuse (including, but not limited to, selling of vouchers to third parties, selling of vouchers or other credits at a significant markup above face value and/or abnormal or excessive use of vouchers on the Site), or (h) behaviour that is harmful to other Users, third parties, or the business interests of Nightcat Digital Solutions (JM0919865-V). Use of an Account for illegal, fraudulent, harassing, defamatory, threatening or abusive purposes may be referred to law enforcement authorities without notice to you. If a legal dispute arises or law enforcement action is commenced relating to your Account or your use of the Services for any reason, Nightcat Digital Solutions (JM0919865-V) may terminate your Account immediately with or without notice.</p>
                                <p>5.4 Users may terminate their Account if they notify Nightcat Digital Solutions (JM0919865-V) in writing (including via email at help@nightcatdigitalsolutions.com) of their desire to do so. Notwithstanding any such termination, Users remain responsible and liable for any incomplete transaction (whether commenced prior to or after such termination), shipment of the product, payment for the product, or the like, and Users must contact Nightcat Digital Solutions (JM0919865-V) after he or she has promptly and effectively carried out and completed all incomplete transactions according to the Terms of Service. Nightcat Digital Solutions (JM0919865-V) shall have no liability, and shall not be liable for any damages incurred due to the actions taken in accordance with this Section. Users waive any and all claims based on any such action taken by Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>5.5 You may only use the Services and/or open an Account if you are located in one of our approved countries, as updated from time to time.</p>
                            ",
                            BM: "
                                <p>5.1 Sesetengah fungsi Perkhidmatan kami memerlukan pendaftaran untuk Akaun dengan memilih pengenalan pengguna unik ('ID Pengguna') dan kata laluan, dan dengan memberikan maklumat peribadi tertentu. Jika anda memilih ID Pengguna yang Nightcat Digital Solutions (JM0919865-V), mengikut budi bicara mutlaknya, mendapati menyinggung atau tidak sesuai, Nightcat Digital Solutions (JM0919865-V) mempunyai hak untuk menggantung atau menamatkan Akaun anda. Anda mungkin boleh menggunakan Akaun anda untuk mendapatkan akses kepada produk, tapak web atau perkhidmatan lain yang kami telah dayakan aksesnya atau yang kami telah terikat atau bekerjasama. Nightcat Digital Solutions (JM0919865-V) belum menyemak, dan tidak bertanggungjawab untuk mana-mana kandungan, fungsi, keselamatan, perkhidmatan, dasar privasi atau amalan lain produk, tapak web atau perkhidmatan pihak ketiga. Jika anda berbuat demikian, syarat perkhidmatan untuk produk, tapak web atau perkhidmatan tersebut, termasuk dasar privasi masing-masing,</p>
                                <p>5.2 Anda bersetuju untuk (a) merahsiakan kata laluan anda dan hanya menggunakan ID Pengguna dan kata laluan anda semasa log masuk, (b) memastikan anda log keluar daripada akaun anda pada akhir setiap sesi di Laman, (c) memaklumkan Nightcat Digital Solutions (JM0919865-V) dengan segera sebarang penggunaan tanpa kebenaran Akaun anda, ID Pengguna dan/atau kata laluan, dan (d) memastikan bahawa maklumat Akaun anda adalah tepat dan terkini. Anda bertanggungjawab sepenuhnya untuk semua aktiviti yang berlaku di bawah ID Pengguna dan Akaun anda walaupun aktiviti atau penggunaan tersebut tidak dilakukan oleh anda. Nightcat Digital Solutions (JM0919865-V) tidak akan bertanggungjawab ke atas sebarang kehilangan atau kerosakan yang timbul daripada penggunaan kata laluan anda yang tidak dibenarkan atau kegagalan anda untuk mematuhi Seksyen ini.</p>
                                #{
                                    #English start here
                                }
                                <p>5.3 You agree that Nightcat Digital Solutions (JM0919865-V) may for any reason, in its sole discretion and with or without notice or liability to you or any third party, immediately terminate your Account and your User ID, remove or discard from the Site any Content associated with your Account and User ID, withdraw any subsidies offered to you, cancel any transactions associated with your Account and User ID, temporarily or in more serious cases permanently withhold any sale proceeds or refunds, and/or take any other actions that Nightcat Digital Solutions (JM0919865-V) deems necessary. Grounds for such actions may include, but are not limited to, actual or suspected (a) extended periods of inactivity, (b) violation of the letter or spirit of these Terms of Service, (c) illegal, fraudulent, harassing, defamatory, threatening or abusive behaviour (d) having multiple user accounts, (e) buying products on the Site for the purpose of commercial re-sale, (f) abnormal or excessive purchase of products from the same Seller or related group of Sellers, (g) voucher abuse (including, but not limited to, selling of vouchers to third parties, selling of vouchers or other credits at a significant markup above face value and/or abnormal or excessive use of vouchers on the Site), or (h) behaviour that is harmful to other Users, third parties, or the business interests of Nightcat Digital Solutions (JM0919865-V). Use of an Account for illegal, fraudulent, harassing, defamatory, threatening or abusive purposes may be referred to law enforcement authorities without notice to you. If a legal dispute arises or law enforcement action is commenced relating to your Account or your use of the Services for any reason, Nightcat Digital Solutions (JM0919865-V) may terminate your Account immediately with or without notice.</p>
                                #{
                                    #English end here
                                }
                                <p>5.4 Pengguna boleh menamatkan Akaun mereka jika mereka memberitahu Nightcat Digital Solutions (JM0919865-V) secara bertulis (termasuk melalui e-mel di help@nightcatdigitalsolutions.com ) tentang keinginan mereka untuk berbuat demikian. Walau apa pun penamatan sedemikian, Pengguna tetap bertanggungjawab dan bertanggungjawab untuk sebarang transaksi yang tidak lengkap (sama ada dimulakan sebelum atau selepas penamatan tersebut), penghantaran produk, pembayaran untuk produk, atau seumpamanya, dan Pengguna mesti menghubungi Nightcat Digital Solutions (JM0919865-V) selepas dia dengan segera dan dengan berkesan melaksanakan dan menyelesaikan semua transaksi yang tidak lengkap mengikut Syarat Perkhidmatan. Nightcat Digital Solutions (JM0919865-V) tidak akan mempunyai liabiliti, dan tidak akan bertanggungjawab ke atas sebarang kerosakan yang ditanggung disebabkan oleh tindakan yang diambil mengikut Seksyen ini. Pengguna mengetepikan mana-mana dan semua tuntutan berdasarkan sebarang tindakan sedemikian yang diambil oleh Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>5.5 Anda hanya boleh menggunakan Perkhidmatan dan/atau membuka Akaun jika anda berada di salah satu negara kami yang diluluskan, seperti yang dikemas kini dari semasa ke semasa.</p>
                            ",
                            CN: "
                                <p>5.1 我们服务的某些功能需要通过选择唯一的用户标识（“用户 ID”）和密码并提供某些个人信息来注册帐户。如果您选择了 Nightcat Digital Solutions (JM0919865-V) 自行决定认为具有冒犯性或不适当的用户 ID，Nightcat Digital Solutions (JM0919865-V) 有权暂停或终止您的帐户。您可以使用您的帐户访问我们已启用访问权限或与我们绑定或合作的其他产品、网站或服务。Nightcat Digital Solutions (JM0919865-V) 未审查这些产品、网站或服务的任何第三方内容、功能、安全性、服务、隐私政策或其他做法，也不对其承担任何责任。如果您这样做，这些产品、网站或服务的服务条款，包括其各自的隐私政策，</p>
                                <p>5.2 您同意 (a) 对您的密码保密，并在登录时仅使用您的用户 ID 和密码，(b) 确保您在网站上的每个会话结束时从您的帐户中注销，(c) 立即通知 Nightcat Digital Solutions (JM0919865-V)任何未经授权使用您的帐户、用户 ID 和/或密码的行为，以及 (d) 确保您的帐户信息是准确和最新的。您对在您的用户 ID 和帐户下发生的所有活动负全部责任，即使此类活动或使用不是您所为。对于因未经授权使用您的密码或您未能遵守本节规定而造成的任何损失或损害，Nightcat Digital Solutions (JM0919865-V) 概不负责。</p>
                                <p>5.3 您同意虾皮可出于任何原因，自行决定，无论是否通知您或任何第三方，立即终止您的帐户和您的用户 ID，从网站上删除或丢弃与您的帐户相关的任何内容，以及用户 ID，撤回提供给您的任何补贴，取消与您的帐户和用户 ID 相关的任何交易，暂时或更严重的情况下永久扣留任何销售收益或退款，和/或采取 Nightcat Digital Solutions (JM0919865-V) 认为必要的任何其他行动。此类行为的理由可能包括但不限于实际或疑似 (a) 长时间不活动，(b) 违反这些服务条款的文字或精神，(c) 非法、欺诈、骚扰、诽谤、威胁或辱骂行为 (d) 拥有多个用户帐户，(e) 出于商业转售目的在网站上购买产品，(f) 从同一卖家或相关卖家群体处异常或过度购买产品，(g) 滥用凭证（包括但不限于销售向第三方提供代金券、以高于面值的显着价格出售代金券或其他信用和/或在网站上异常或过度使用代金券），或 (h) 对其他用户、第三方或Nightcat Digital Solutions (JM0919865-V) 的商业利益。将账户用于非法、欺诈、骚扰、诽谤、威胁或滥用目的可能会被提交给执法机构，恕不另行通知。如果因任何原因发生与您的帐户或您对服务的使用有关的法律纠纷或执法行动开始，</p>
                                <p>5.4 如果用户以书面形式（包括通过电子邮件help@nightcatdigitalsolutions.com）通知 Nightcat Digital Solutions (JM0919865-V)，他们可以终止他们的帐户。尽管有任何此类终止，用户仍需对任何未完成的交易（无论是在此类终止之前还是之后开始）、产品运输、产品付款等负责，并且用户必须在他或她及时联系 Nightcat Digital Solutions (JM0919865-V)并根据服务条款有效地进行和完成了所有未完成的交易。Nightcat Digital Solutions (JM0919865-V) 不承担任何责任，也不对因根据本节采取的行动而造成的任何损害承担责任。用户放弃基于 Nightcat Digital Solutions (JM0919865-V) 采取的任何此类行动的任何和所有索赔。</p>
                                <p>5.5 如果您位于我们不时更新的批准国家之一，您只能使用服务和/或开设账户。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "TERM OF USE",
                            BM: "SYARAT PENGGUNAAN",
                            CN: "使用期限"
                        },
                        description: {
                            EN: "
                                <p>6.1 The license for use of this Site and the Services is effective until terminated. This license will terminate as set forth under these Terms of Service or if you fail to comply with any term or condition of these Terms of Service. In any such event, Nightcat Digital Solutions (JM0919865-V) may effect such termination with or without notice to you.</p>
                                <p>6.2 You agree not to:</p>
                                <ol type='a'>
                                    <li>upload, post, transmit or otherwise make available any Content that is unlawful, harmful, threatening, abusive, harassing, alarming, distressing, tortuous, defamatory, vulgar, obscene, libelous, invasive of another's privacy, hateful, or racially, ethnically or otherwise objectionable;</li>
                                    <li>violate any laws, including without limitation any laws and regulation in relation to export and import restrictions, third party rights or our Prohibited and Restricted Items Policy;</li>
                                    <li>upload, post, transmit or otherwise make available any Content featuring an unsupervised minor or use the Services to harm minors in any way; use the Services or upload Content to impersonate any person or entity, or otherwise misrepresent your affiliation with a person or entity;</li>
                                    <li>forge headers or otherwise manipulate identifiers in order to disguise the origin of any Content transmitted through the Services;</li>
                                    <li>remove any proprietary notices from the Site;</li>
                                    <li>cause, permit or authorize the modification, creation of derivative works, or translation of the Services without the express permission of Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>use the Services for the benefit of any third party or any manner not permitted by the licenses granted herein;</li>
                                    <li>use the Services or upload Content in a manner that is fraudulent, unconscionable, false, misleading or deceptive;</li>
                                    <li>open and/or operate multiple user accounts in connection with any conduct that violates either the letter or spirit of these Terms of Service;</li>
                                    <li>access the Nightcat Digital Solutions (JM0919865-V) platform, open a user account, or otherwise access your user account using an emulator, simulator, bot or other similar hardware or software;</li>
                                    <li>manipulate the price of any item or interfere with other User's listings;</li>
                                    <li>take any action that may undermine the feedback or ratings systems;</li>
                                    <li>attempt to decompile, reverse engineer, disassemble or hack the Services (or any portion thereof), or to defeat or overcome any encryption technology or security measures implemented by Nightcat Digital Solutions (JM0919865-V) with respect to the Services and/or data transmitted, processed or stored by Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>harvest or collect any information about or regarding other Account holders, including, without limitation, any personal data or information;</li>
                                    <li>upload, email, post, transmit or otherwise make available any Content that you do not have a right to make available under any law or under contractual or fiduciary relationships (such as inside information, proprietary and confidential information learned or disclosed as part of employment relationships or under nondisclosure agreements);</li>
                                    <li>upload, email, post, transmit or otherwise make available any Content that infringes any patent, trademark, trade secret, copyright or other proprietary rights of any party;</li>
                                    <li>upload, email, post, transmit or otherwise make available any unsolicited or unauthorised advertising, promotional materials, 'junk mail', 'spam', 'chain letters', 'pyramid schemes', or any other unauthorised form of solicitation;</li>
                                    <li>upload, email, post, transmit or otherwise make available any material that contains software viruses, worms, Trojan-horses or any other computer code, routines, files or programs designed to directly or indirectly interfere with, manipulate, interrupt, destroy or limit the functionality or integrity of any computer software or hardware or data or telecommunications equipment;</li>
                                    <li>disrupt the normal flow of dialogue, cause a screen to 'scroll' faster than other Users of the Services are able to type, or otherwise act in a manner that negatively affects other Users' ability to engage in real time exchanges;</li>
                                    <li>interfere with, manipulate or disrupt the Services or servers or networks connected to the Services or any other User's use and enjoyment of the Services, or disobey any requirements, procedures, policies or regulations of networks connected to the Site;</li>
                                    <li>take any action or engage in any conduct that could directly or indirectly damage, disable, overburden, or impair the Services or the servers or networks connected to the Services;</li>
                                    <li>use the Services to intentionally or unintentionally violate any applicable local, state, national or international law, rule, code, directive, guideline, policy or regulation including, without limitation, laws and requirements (whether or not having the force of law) relating to anti-money laundering or counter-terrorism;</li>
                                    <li>use the Services in violation of or to circumvent any sanctions or embargo administered or enforced by the U.S. Department of Treasury’s Office of Foreign Assets Control, the United Nations Security Council, the European Union or Her Majesty’s Treasury;</li>
                                    <li>use the Services to violate the privacy of others or to 'stalk' or otherwise harass another;</li>
                                    <li>infringe the rights of Nightcat Digital Solutions (JM0919865-V), including any intellectual property rights and any passing off of the same thereof;</li>
                                    <li>use the Services to collect or store personal data about other Users in connection with the prohibited conduct and activities set forth above; and/or</li>
                                    <li>list items which infringe upon the copyright, trademark or other intellectual property rights of third parties or use the Services in a manner which will infringe the intellectual property rights of others.</li>
                                    <li>direct or encourage another user to conduct a transaction other than on the Site.</li>
                                </ol>
                                <p>6.3 You understand that all Content, whether publicly posted or privately transmitted, is the sole responsibility of the person from whom such Content originated. This means that you, and not Nightcat Digital Solutions (JM0919865-V), are entirely responsible for all Content that you upload, post, email, transmit or otherwise make available through the Site. You understand that by using the Site, you may be exposed to Content that you may consider to be offensive, indecent or objectionable. To the maximum extent permitted by applicable law, under no circumstances will Nightcat Digital Solutions (JM0919865-V) be liable in any way for any Content, including, but not limited to, any errors or omissions in any Content, or any loss or damage of any kind incurred as a result of the use of, or reliance on, any Content posted, emailed, transmitted or otherwise made available on the Site.</p>
                                <p>6.4 You acknowledge that Nightcat Digital Solutions (JM0919865-V) and its designees shall have the right (but not the obligation) in their sole discretion to pre-screen, refuse, delete, stop, suspend, remove or move any Content, including without limitation any Content or information posted by you, that is available on the Site without any liability to you. Without limiting the foregoing, Nightcat Digital Solutions (JM0919865-V) and its designees shall have the right to remove any Content (i) that violates these Terms of Service or our Prohibited and Restricted Items Policy; (ii) if we receive a complaint from another User; (iii) if we receive a notice or allegation of intellectual property infringement or other legal instruction or request for removal; or (iv) if such Content is otherwise objectionable. We may also block delivery of a communication (including, without limitation, status updates, postings, messages and/or chats) to or from the Services as part of our effort to protect the Services or our Users, or otherwise enforce the provisions of these Terms and Conditions. You agree that you must evaluate, and bear all risks associated with, the use of any Content, including, without limitation, any reliance on the accuracy, completeness, or usefulness of such Content. In this regard, you acknowledge that you have not and, to the maximum extent permitted by applicable law, may not rely on any Content created by Nightcat Digital Solutions (JM0919865-V) or submitted to Nightcat Digital Solutions (JM0919865-V), including, without limitation, information in Nightcat Digital Solutions (JM0919865-V) Forums and in all other parts of the Site.</p>
                                <p>6.5 You acknowledge, consent to and agree that Nightcat Digital Solutions (JM0919865-V) may access, preserve and disclose your Account information and Content to any legal, regulatory, or governmental authority, the relevant rights owner, or other third parties if required to do so by law pursuant to an order of a court or lawful request by any governmental or regulatory authority having jurisdiction over Nightcat Digital Solutions (JM0919865-V) or in a good faith belief that such access preservation or disclosure is reasonably necessary to: (a) comply with legal process; (b) enforce these Terms of Service or our Prohibited and Restricted Items Policy; (c) respond to claims that any Content violates the rights of third parties, including intellectual property rights; (d) respond to your requests for customer service; or (e) protect the rights, property or personal safety of Nightcat Digital Solutions (JM0919865-V), its Users and/or the public.</p>
                            
                            ",
                            BM: "
                                <p>6.1 Lesen untuk penggunaan Tapak ini dan Perkhidmatan berkuat kuasa sehingga ditamatkan. Lesen ini akan ditamatkan seperti yang dinyatakan di bawah Syarat Perkhidmatan ini atau jika anda gagal mematuhi mana-mana terma atau syarat Syarat Perkhidmatan ini. Dalam mana-mana keadaan sedemikian, Nightcat Digital Solutions (JM0919865-V) boleh melaksanakan penamatan sedemikian dengan atau tanpa notis kepada anda.</p>
                                <p>6.2 Anda bersetuju untuk tidak:</p>
                                <ol type='a'>
                                    <li>memuat naik, menyiarkan, menghantar atau sebaliknya menyediakan apa-apa Kandungan yang menyalahi undang-undang, berbahaya, mengancam, menyalahgunakan, mengganggu, membimbangkan, menyedihkan, berliku-liku, memfitnah, kesat, lucah, memfitnah, invasif privasi orang lain, penuh kebencian atau perkauman, secara etnik atau sebaliknya tidak menyenangkan;</li>
                                    <li>melanggar mana-mana undang-undang, termasuk tanpa had mana-mana undang-undang dan peraturan berhubung dengan sekatan eksport dan import, hak pihak ketiga atau  Polisi Perkara Larangan dan Terhad kami ;</li>
                                    <li>memuat naik, menyiarkan, menghantar atau sebaliknya menyediakan apa-apa Kandungan yang menampilkan kanak-kanak bawah umur yang tidak diawasi atau menggunakan Perkhidmatan untuk membahayakan kanak-kanak bawah umur dalam apa jua cara;</li>
                                    <li>menggunakan Perkhidmatan atau memuat naik Kandungan untuk menyamar sebagai mana-mana orang atau entiti, atau sebaliknya menyalahgambarkan hubungan anda dengan seseorang atau entiti;</li>
                                    <li>memalsukan pengepala atau sebaliknya memanipulasi pengecam untuk menyamarkan asal usul mana-mana Kandungan yang dihantar melalui Perkhidmatan;</li>
                                    <li>mengalih keluar sebarang notis proprietari daripada Tapak;</li>
                                    <li>menyebabkan, membenarkan atau membenarkan pengubahsuaian, penciptaan karya terbitan, atau terjemahan Perkhidmatan tanpa kebenaran nyata Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>menggunakan Perkhidmatan untuk faedah mana-mana pihak ketiga atau apa-apa cara yang tidak dibenarkan oleh lesen yang diberikan di sini;</li>
                                    <li>menggunakan Perkhidmatan atau memuat naik Kandungan dengan cara yang menipu, tidak wajar, palsu, mengelirukan atau memperdaya;</li>
                                    <li>membuka dan/atau mengendalikan berbilang akaun pengguna berkaitan dengan sebarang kelakuan yang melanggar sama ada surat atau semangat Syarat Perkhidmatan ini;</li>
                                    <li>mengakses platform Nightcat Digital Solutions (JM0919865-V), membuka akaun pengguna, atau sebaliknya mengakses akaun pengguna anda menggunakan emulator, simulator, bot atau perkakasan atau perisian lain yang serupa;</li>
                                    <li>memanipulasi harga mana-mana item atau mengganggu penyenaraian Pengguna lain;</li>
                                    <li>mengambil sebarang tindakan yang boleh menjejaskan maklum balas atau sistem penilaian;</li>
                                    <li>cuba untuk menyahkompilasi, kejuruteraan balik, membuka atau menggodam Perkhidmatan (atau mana-mana bahagian daripadanya), atau untuk mengalahkan atau mengatasi sebarang teknologi penyulitan atau langkah keselamatan yang dilaksanakan oleh Nightcat Digital Solutions (JM0919865-V) berkenaan dengan Perkhidmatan dan/atau data yang dihantar, diproses atau disimpan oleh Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>menuai atau mengumpul sebarang maklumat tentang atau mengenai pemegang Akaun lain, termasuk, tanpa had, sebarang data atau maklumat peribadi;</li>
                                    <li>memuat naik, e-mel, menyiarkan, menghantar atau sebaliknya menyediakan apa-apa Kandungan yang anda tidak berhak untuk menyediakannya di bawah mana-mana undang-undang atau di bawah perhubungan kontrak atau fidusiari (seperti maklumat dalaman, maklumat proprietari dan sulit yang dipelajari atau didedahkan sebagai sebahagian hubungan pekerjaan atau di bawah perjanjian tidak mendedahkan);</li>
                                    #{
                                        #English start here
                                    }
                                    <li>upload, email, post, transmit or otherwise make available any Content that infringes any patent, trademark, trade secret, copyright or other proprietary rights of any party;</li>
                                    <li>upload, email, post, transmit or otherwise make available any unsolicited or unauthorised advertising, promotional materials, 'junk mail', 'spam', 'chain letters', 'pyramid schemes', or any other unauthorised form of solicitation;</li>
                                    <li>upload, email, post, transmit or otherwise make available any material that contains software viruses, worms, Trojan-horses or any other computer code, routines, files or programs designed to directly or indirectly interfere with, manipulate, interrupt, destroy or limit the functionality or integrity of any computer software or hardware or data or telecommunications equipment;</li>
                                    <li>disrupt the normal flow of dialogue, cause a screen to 'scroll' faster than other Users of the Services are able to type, or otherwise act in a manner that negatively affects other Users' ability to engage in real time exchanges;</li>
                                    <li>interfere with, manipulate or disrupt the Services or servers or networks connected to the Services or any other User's use and enjoyment of the Services, or disobey any requirements, procedures, policies or regulations of networks connected to the Site;</li>
                                    <li>take any action or engage in any conduct that could directly or indirectly damage, disable, overburden, or impair the Services or the servers or networks connected to the Services;</li>
                                    <li>use the Services to intentionally or unintentionally violate any applicable local, state, national or international law, rule, code, directive, guideline, policy or regulation including, without limitation, laws and requirements (whether or not having the force of law) relating to anti-money laundering or counter-terrorism;</li>
                                    <li>use the Services in violation of or to circumvent any sanctions or embargo administered or enforced by the U.S. Department of Treasury’s Office of Foreign Assets Control, the United Nations Security Council, the European Union or Her Majesty’s Treasury;</li>
                                    <li>use the Services to violate the privacy of others or to 'stalk' or otherwise harass another;</li>
                                    <li>infringe the rights of Nightcat Digital Solutions (JM0919865-V), including any intellectual property rights and any passing off of the same thereof;</li>
                                    <li>use the Services to collect or store personal data about other Users in connection with the prohibited conduct and activities set forth above; and/or</li>
                                    <li>list items which infringe upon the copyright, trademark or other intellectual property rights of third parties or use the Services in a manner which will infringe the intellectual property rights of others.</li>
                                    <li>direct or encourage another user to conduct a transaction other than on the Site.</li>
                                </ol>
                                <p>6.3 You understand that all Content, whether publicly posted or privately transmitted, is the sole responsibility of the person from whom such Content originated. This means that you, and not Nightcat Digital Solutions (JM0919865-V), are entirely responsible for all Content that you upload, post, email, transmit or otherwise make available through the Site. You understand that by using the Site, you may be exposed to Content that you may consider to be offensive, indecent or objectionable. To the maximum extent permitted by applicable law, under no circumstances will Nightcat Digital Solutions (JM0919865-V) be liable in any way for any Content, including, but not limited to, any errors or omissions in any Content, or any loss or damage of any kind incurred as a result of the use of, or reliance on, any Content posted, emailed, transmitted or otherwise made available on the Site.</p>
                                <p>6.4 You acknowledge that Nightcat Digital Solutions (JM0919865-V) and its designees shall have the right (but not the obligation) in their sole discretion to pre-screen, refuse, delete, stop, suspend, remove or move any Content, including without limitation any Content or information posted by you, that is available on the Site without any liability to you. Without limiting the foregoing, Nightcat Digital Solutions (JM0919865-V) and its designees shall have the right to remove any Content (i) that violates these Terms of Service or our Prohibited and Restricted Items Policy; (ii) if we receive a complaint from another User; (iii) if we receive a notice or allegation of intellectual property infringement or other legal instruction or request for removal; or (iv) if such Content is otherwise objectionable. We may also block delivery of a communication (including, without limitation, status updates, postings, messages and/or chats) to or from the Services as part of our effort to protect the Services or our Users, or otherwise enforce the provisions of these Terms and Conditions. You agree that you must evaluate, and bear all risks associated with, the use of any Content, including, without limitation, any reliance on the accuracy, completeness, or usefulness of such Content. In this regard, you acknowledge that you have not and, to the maximum extent permitted by applicable law, may not rely on any Content created by Nightcat Digital Solutions (JM0919865-V) or submitted to Nightcat Digital Solutions (JM0919865-V), including, without limitation, information in Nightcat Digital Solutions (JM0919865-V) Forums and in all other parts of the Site.</p>
                                <p>6.5 You acknowledge, consent to and agree that Nightcat Digital Solutions (JM0919865-V) may access, preserve and disclose your Account information and Content to any legal, regulatory, or governmental authority, the relevant rights owner, or other third parties if required to do so by law pursuant to an order of a court or lawful request by any governmental or regulatory authority having jurisdiction over Nightcat Digital Solutions (JM0919865-V) or in a good faith belief that such access preservation or disclosure is reasonably necessary to: (a) comply with legal process; (b) enforce these Terms of Service or our Prohibited and Restricted Items Policy; (c) respond to claims that any Content violates the rights of third parties, including intellectual property rights; (d) respond to your requests for customer service; or (e) protect the rights, property or personal safety of Nightcat Digital Solutions (JM0919865-V), its Users and/or the public.</p>
                                #{
                                    #English end here
                                }
                            ",
                            CN: "
                                <p>6.1 使用本网站和服务的许可在终止前一直有效。本许可将根据这些服务条款的规定终止，或者如果您未能遵守这些服务条款的任何条款或条件。在任何此类情况下，Nightcat Digital Solutions (JM0919865-V) 可在通知或不通知您的情况下终止此类终止。</p>
                                <p>6.2 您同意不会：</p>
                                <ol type='a'>
                                    <li>上传、发布、传输或以其他方式提供任何非法、有害、威胁、辱骂、骚扰、令人震惊、痛苦、曲折、诽谤、粗俗、淫秽、诽谤、侵犯他人隐私、仇恨或种族的内容，在种族或其他方面令人反感；</li>
                                    <li>违反任何法律，包括但不限于与进出口限制、第三方权利或我们的禁止和限制物品政策有关的任何法律和法规 ；</li>
                                    <li>上传、发布、传输或以其他方式提供任何以无人监管的未成年人为特色的内容，或使用服务以任何方式伤害未成年人；</li>
                                    <li>使用服务或上传内容来冒充任何人或实体，或以其他方式歪曲您与某个人或实体的从属关系；</li>
                                    <li>伪造标题或以其他方式操纵标识符以掩盖通过服务传输的任何内容的来源；</li>
                                    <li>从网站上删除任何所有权通知；</li>
                                    <li>未经虾皮明确许可，导致、允许或授权修改、创作衍生作品或翻译服务；</li>
                                    <li>为任何第三方的利益或此处授予的许可所不允许的任何方式使用服务；</li>
                                    <li>以欺诈、不合情理、虚假、误导或欺骗的方式使用服务或上传内容；</li>
                                    <li>因任何违反本服务条款的文字或精神的行为而开设和/或操作多个用户帐户；</li>
                                    <li>使用模拟器、模拟器、机器人或其他类似硬件或软件访问 Nightcat Digital Solutions (JM0919865-V) 平台、开设用户帐户或以其他方式访问您的用户帐户；</li>
                                    <li>操纵任何物品的价格或干扰其他用户的列表；</li>
                                    <li>采取任何可能破坏反馈或评级系统的行动；</li>
                                    <li>试图对服务（或其任何部分）进行反编译、逆向工程、反汇编或黑客攻击，或击败或克服 Nightcat Digital Solutions (JM0919865-V) 实施的任何加密技术或安全措施，以及/或传输、处理或存储的数据由 Nightcat Digital Solutions (JM0919865-V) 提供；</li>
                                    <li>获取或收集关于其他账户持有人的任何信息，包括但不限于任何个人数据或信息；</li>
                                    <li>上传、发送电子邮件、发布、传输或以其他方式提供您根据任何法律或合同或信托关系无权提供的任何内容（例如作为一部分获知或披露的内幕信息、专有和机密信息）雇佣关系或保密协议）；</li>
                                    <li>上传、发送电子邮件、发布、传输或以其他方式提供侵犯任何一方的任何专利、商标、商业秘密、版权或其他专有权利的任何内容；</li>
                                    <li>上传、发送电子邮件、张贴、传输或以其他方式提供任何未经请求或未经授权的广告、宣传材料、“垃圾邮件”、“垃圾邮件”、“连锁信”、“金字塔计划”或任何其他未经授权的招揽形式；</li>
                                    <li>上传、发送电子邮件、张贴、传输或以其他方式提供任何包含软件病毒、蠕虫、特洛伊木马或任何其他旨在直接或间接干扰、操纵、中断、破坏的计算机代码、例程、文件或程序的材料或限制任何计算机软件或硬件或数据或电信设备的功能或完整性；</li>
                                    <li>扰乱正常的对话流程，导致屏幕“滚动”的速度比服务的其他用户能够输入的速度快，或以其他方式对其他用户进行实时交流的能力产生负面影响；</li>
                                    <li>干扰、操纵或破坏服务或连接到服务的服务器或网络或任何其他用户对服务的使用和享受，或违反连接到网站的网络的任何要求、程序、政策或规定；</li>
                                    <li>采取任何可能直接或间接损害、禁用、负担过重或损害服务或连接到服务的服务器或网络的行动或行为；</li>
                                    <li>使用服务有意或无意地违反任何适用的地方、州、国家或国际法律、规则、规范、指令、指南、政策或法规，包括但不限于法律和要求（无论是否具有法律效力） ) 与反洗钱或反恐有关；</li>
                                    <li>使用服务违反或规避美国财政部外国资产控制办公室、联合国安理会、欧盟或英国财政部实施或执行的任何制裁或禁运；</li>
                                    <li>使用服务侵犯他人的隐私或“跟踪”或以其他方式骚扰他人；</li>
                                    <li>侵犯 Nightcat Digital Solutions (JM0919865-V) 的权利，包括任何知识产权及其任何假冒；</li>
                                    <li>使用服务收集或存储与上述禁止行为和活动有关的其他用户的个人数据；和/或</li>
                                    <li>列出侵犯第三方版权、商标或其他知识产权的项目，或以侵犯他人知识产权的方式使用服务。</li>
                                    <li>指导或鼓励其他用户在本网站以外进行交易</li>
                                </ol>
                                <p>6.4 您承认虾皮及其指定人员有权（但无义务）自行决定预先筛选、拒绝、删除、停止、暂停、删除或移动任何内容，包括但不限于任何内容或由您，可在本网站上获得，对您不承担任何责任。在不限制前述规定的情况下，Nightcat Digital Solutions (JM0919865-V) 及其指定人员有权删除 (i) 违反这些服务条款或我们的禁止和限制物品政策的任何内容；(ii) 如果我们收到其他用户的投诉；(iii) 如果我们收到知识产权侵权的通知或指控或其他法律指示或删除请求；(iv) 如果此类内容在其他方面令人反感。我们还可能阻止传递通信（包括但不限于状态更新、发布、作为我们保护服务或我们的用户的努力的一部分，或以其他方式执行这些条款和条件的规定，服务或来自服务的消息和/或聊天）。您同意您必须评估并承担与使用任何内容相关的所有风险，包括但不限于对此类内容的准确性、完整性或有用性的任何依赖。在这方面，您承认您没有，并且在适用法律允许的最大范围内，不得依赖 Nightcat Digital Solutions (JM0919865-V) 创建或提交给 Nightcat Digital Solutions (JM0919865-V) 的任何内容，包括但不限于 Nightcat Digital Solutions (JM0919865-V) 论坛和所有其他部分中的信息网站。并承担与使用任何内容相关的所有风险，包括但不限于对此类内容的准确性、完整性或有用性的任何依赖。在这方面，您承认您没有，并且在适用法律允许的最大范围内，不得依赖 Nightcat Digital Solutions (JM0919865-V) 创建或提交给 Nightcat Digital Solutions (JM0919865-V) 的任何内容，包括但不限于 Nightcat Digital Solutions (JM0919865-V) 论坛和所有其他部分中的信息网站。并承担与使用任何内容相关的所有风险，包括但不限于对此类内容的准确性、完整性或有用性的任何依赖。在这方面，您承认您没有，并且在适用法律允许的最大范围内，不得依赖 Nightcat Digital Solutions (JM0919865-V) 创建或提交给 Nightcat Digital Solutions (JM0919865-V) 的任何内容，包括但不限于 Nightcat Digital Solutions (JM0919865-V) 论坛和所有其他部分中的信息网站。</p>
                                <p>6.5 您承认、同意并同意，如果法律要求，虾皮可以访问、保存并向任何法律、监管或政府机构、相关权利所有者或其他第三方披露您的帐户信息和内容。任何对 Nightcat Digital Solutions (JM0919865-V) 有管辖权的政府或监管机构发出的法院命令或合法要求，或善意相信此类访问保留或披露是合理必要的：</p>
                                <ol type='a'>
                                    <li>遵守法律程序；</li>
                                    <li>执行这些服务条款或我们的禁止和限制物品政策；</li>
                                    <li>回应任何内容侵犯第三方权利（包括知识产权）的索赔；</li>
                                    <li>回应您的客户服务请求；</li>
                                    <li>保护虾皮、其用户和/或公众的权利、财产或人身安全。</li>
                                </ol>
                            "
                        }
                    },{
                        # BM is in English
                        title: {
                            EN: "VIOLATION OF OUR TERMS OF SERVICE",
                            BM: "VIOLATION OF OUR TERMS OF SERVICE",
                            CN: "违反我们的服务条款"
                        },
                        description: {
                            EN: "
                                <p>7.1 Violations of this policy may result in a range of actions, including, without limitation, any or all of the following:</p>
                                <ul>
                                    <li>Listing deletion</li>
                                    <li>Limits placed on Account privileges</li>
                                    <li>Account suspension and subsequent termination</li>
                                    <li>Criminal charges</li>
                                    <li>Civil actions, including without limitation a claim for damages and/or interim or injunctive relief</li>
                                </ul>
                                <p>7.2 If you believe a User on our Site is violating these Terms of Service, please contact <a href='mailto:help@nightcatdigitalsolutions.com'>help@nightcatdigitalsolutions.com</a>.</p>
                            ",
                            BM: "
                                <p>7.1 Violations of this policy may result in a range of actions, including, without limitation, any or all of the following:</p>
                                <ul>
                                    <li>Listing deletion</li>
                                    <li>Limits placed on Account privileges</li>
                                    <li>Account suspension and subsequent termination</li>
                                    <li>Criminal charges</li>
                                    <li>Civil actions, including without limitation a claim for damages and/or interim or injunctive relief</li>
                                </ul>
                                <p>7.2 If you believe a User on our Site is violating these Terms of Service, please contact <a href='help@nightcatdigitalsolutions.com.'>help@nightcatdigitalsolutions.com</a>.</p>
                            ",
                            CN: "
                                <p>7.1 违反本政策可能导致一系列行为，包括但不限于以下任何或所有行为：</p>
                                <ul>
                                    <li>列表删除</li>
                                    <li>对帐户权限的限制</li>
                                    <li>帐户暂停和随后终止</li>
                                    <li>刑事指控</li>
                                    <li>民事诉讼，包括但不限于损害赔偿和/或临时或禁令救济的索赔</li>
                                </ul>
                                <p>7.2 如果您认为我们网站上的用户违反了这些服务条款，请联系<a href='mailto:help@nightcatdigitalsolutions.com'>help@nightcatdigitalsolutions.com</a>。</p>
                            "
                        }
                    },
                    {
                        # BM is in English
                        title: {
                            EN: "REPORTING INTELLECTUAL PROPERTY RIGHTS INFRINGEMENT",
                            BM: "REPORTING INTELLECTUAL PROPERTY RIGHTS INFRINGEMENT",
                            CN: "举报侵犯知识产权的行为"
                        },
                        description: {
                            EN: "
                                <p>8.1 As stated above, Nightcat Digital Solutions (JM0919865-V) does not allow listings that violate the intellectual property rights of brands or other intellectual property rights owners (“IPR Owner”).</p>
                                <p>8.2 Except where expressly stated otherwise, the  Users are independent individuals or businesses and they are not associated with Nightcat Digital Solutions (JM0919865-V) in any way and Nightcat Digital Solutions (JM0919865-V) is neither the agent nor representative of the Users and does not hold and/or own any of the merchandises listed on the Site.</p>
                                <p>8.3 If you are an IPR Owner or an agent duly authorised by an IPR Owner (“IPR Agent”) and you believe that your right or your principal’s right has been infringed, please notify us by submitting the online form at nightcatdigitalsolutions.com and provide us the documents requested below to support your claim. Do allow us time to process the information provided. Nightcat Digital Solutions (JM0919865-V) will respond to your complaint as soon as practicable.</p>
                                <p>8.4 Complaints under this Section 8 must be provided in the form prescribed by Nightcat Digital Solutions (JM0919865-V), which may be updated from time to time, and must include at least the following: </p>
                                <ol type='a'>
                                    <li>a physical or electronic signature of an IPR Owner or IPR Agent (collectively, “Informant”); </li>
                                    <li>a description of the type and nature of intellectual property right that is allegedly infringed and proof of rights; </li>
                                    <li>a description of the nature of alleged infringement with sufficient details to enable Nightcat Digital Solutions (JM0919865-V) to assess the complaint</li>
                                    <li>URL(s) of the listing(s) which contain the alleged infringement; </li>
                                    <li>sufficient information to allow Nightcat Digital Solutions (JM0919865-V) to contact the Informant, such as Informant’s physical address, telephone number and e-mail address; </li>
                                    <li>a statement by Informant that the complaint is filed on good faith belief and that the use of the intellectual property as identified by the Informant is not authorised by the IPR Owner or the law; </li>
                                    <li>a statement by the Informant that the information in the notification is accurate, that the Informant will indemnify us for any damages we may suffer as a result of the information provided by the Informant and that the Informant has the appropriate right or is authorised to act on the IPR Owner’s behalf in all matters relating to the complaint.</li>
                                </ol>
                                <p>8.5 Nightcat Digital Solutions (JM0919865-V) acknowledges a manufacturer’s right to enter into certain exclusive distribution agreements or minimum advertised price agreements for its products. However, violations of such agreements do not constitute intellectual property rights infringement. As the enforcement of these agreements is a matter between the manufacturer and the sellers, Nightcat Digital Solutions (JM0919865-V) does not assist in this type of enforcement activity and does not enforce exclusive distribution rights or price-control matters except within the countries that have laws specifically governing selective or exclusive distribution.</p>
                                <p>8.6 Each and every Seller agrees to hold Nightcat Digital Solutions (JM0919865-V) and its Affiliates harmless from all claims, causes of action, damages and judgments arising out of any removal of any Content or product listings pursuant to or in relation to any intellectual property infringement claim.</p>
                            ",
                            BM: "
                                <p>8.1 As stated above, Nightcat Digital Solutions (JM0919865-V) does not allow listings that violate the intellectual property rights of brands or other intellectual property rights owners (“IPR Owner”).</p>
                                <p>8.2 Except where expressly stated otherwise, the  Users are independent individuals or businesses and they are not associated with Nightcat Digital Solutions (JM0919865-V) in any way and Nightcat Digital Solutions (JM0919865-V) is neither the agent nor representative of the Users and does not hold and/or own any of the merchandises listed on the Site.</p>
                                <p>8.3 If you are an IPR Owner or an agent duly authorised by an IPR Owner (“IPR Agent”) and you believe that your right or your principal’s right has been infringed, please notify us by submitting the online form at nightcatdigitalsolutions.com and provide us the documents requested below to support your claim. Do allow us time to process the information provided. Nightcat Digital Solutions (JM0919865-V) will respond to your complaint as soon as practicable.</p>
                                <p>8.4 Complaints under this Section 8 must be provided in the form prescribed by Nightcat Digital Solutions (JM0919865-V), which may be updated from time to time, and must include at least the following: </p>
                                <ol type='a'>
                                    <li>a physical or electronic signature of an IPR Owner or IPR Agent (collectively, “Informant”); </li>
                                    <li>a description of the type and nature of intellectual property right that is allegedly infringed and proof of rights; </li>
                                    <li>a description of the nature of alleged infringement with sufficient details to enable Nightcat Digital Solutions (JM0919865-V) to assess the complaint</li>
                                    <li>URL(s) of the listing(s) which contain the alleged infringement; </li>
                                    <li>sufficient information to allow Nightcat Digital Solutions (JM0919865-V) to contact the Informant, such as Informant’s physical address, telephone number and e-mail address; </li>
                                    <li>a statement by Informant that the complaint is filed on good faith belief and that the use of the intellectual property as identified by the Informant is not authorised by the IPR Owner or the law; </li>
                                    <li>a statement by the Informant that the information in the notification is accurate, that the Informant will indemnify us for any damages we may suffer as a result of the information provided by the Informant and that the Informant has the appropriate right or is authorised to act on the IPR Owner’s behalf in all matters relating to the complaint.</li>
                                </ol>
                                <p>8.5 Nightcat Digital Solutions (JM0919865-V) acknowledges a manufacturer’s right to enter into certain exclusive distribution agreements or minimum advertised price agreements for its products. However, violations of such agreements do not constitute intellectual property rights infringement. As the enforcement of these agreements is a matter between the manufacturer and the sellers, Nightcat Digital Solutions (JM0919865-V) does not assist in this type of enforcement activity and does not enforce exclusive distribution rights or price-control matters except within the countries that have laws specifically governing selective or exclusive distribution.</p>
                                <p>8.6 Each and every Seller agrees to hold Nightcat Digital Solutions (JM0919865-V) and its Affiliates harmless from all claims, causes of action, damages and judgments arising out of any removal of any Content or product listings pursuant to or in relation to any intellectual property infringement claim.</p>
                            ",
                            CN: "
                                <p>8.1 如上所述，Nightcat Digital Solutions (JM0919865-V) 不允许发布侵犯品牌或其他知识产权所有者（“知识产权所有者”）知识产权的商品。</li>
                                <p>8.2 除非另有明确说明，用户是独立的个人或企业，他们与虾皮没有任何关联，虾皮既不是用户的代理人，也不是用户的代表，也不持有和/或拥有网站上列出的任何商品。地点。</li>
                                <p>8.3 如果您是知识产权所有人或知识产权所有人正式授权的代理人（“知识产权代理人”），并且您认为您的权利或委托人的权利受到侵犯，请通过<a href='https://nightcatdigitalsolutions.com'>https://nightcatdigitalsolutions.com</a>并向我们​​提供以下要求的文件以支持您的索赔。请允许我们有时间处理所提供的信息。Nightcat Digital Solutions (JM0919865-V) 将尽快回复您的投诉。</li>
                                <p>8.4 根据第 8 条提出的投诉必须以 Nightcat Digital Solutions (JM0919865-V) 规定的形式提供，该形式可能会不时更新，并且必须至少包括以下内容：</li>
                                <ul>
                                    <li>知识产权所有人或知识产权代理人（统称为, “线人”); </li>
                                    <li>对涉嫌侵权的知识产权类型和性质的描述以及权利证明；</li>
                                    <li>对涉嫌侵权性质的描述，并提供足够的详细信息，以使 Nightcat Digital Solutions (JM0919865-V) 能够评估投诉 </li>
                                    <li>包含涉嫌侵权的商品的 URL；</li>
                                    <li>足以让虾皮联系线人的信息，例如线人的实际地址、电话号码和电子邮件地址；</li>
                                    <li>举报人声明，投诉是基于善意提出的，并且举报人认定的知识产权的使用未经知识产权所有人或法律授权；</li>
                                    <li>举报人声明通知中的信息是准确的，举报人将赔偿我们因举报人提供的信息而可能遭受的任何损失，并且举报人拥有适当的权利或获得授权代表知识产权所有人处理与投诉有关的所有事项。</li>
                                </ul>
                                <p>8.5 Nightcat Digital Solutions (JM0919865-V) 承认制造商有权为其产品签订某些独家经销协议或最低广告价格协议。但是，违反此类协议不构成侵犯知识产权。由于这些协议的执行是制造商和卖家之间的事情，Nightcat Digital Solutions (JM0919865-V) 不协助此类执行活动，也不执行独家分销权或价格控制事项，除非在有专门管理选择性或独家销售的法律的国家/地区内分配。</p>
                                <p>8.6 每个卖家都同意让虾皮及其关联公司免受因根据或与任何知识产权侵权索赔有关的任何内容或产品列表的任何删除而引起的所有索赔、诉讼原因、损害赔偿和判决</p>
                            "
                        }
                    },
                    {
                        # BM is in English
                        title: {
                            EN: "PURCHASE AND PAYMENT",
                            BM: "PURCHASE AND PAYMENT",
                            CN: "购买和付款"
                        },
                        description: {
                            EN: "
                                <p>9.1 Nightcat Digital Solutions (JM0919865-V) supports one or more of the following payment methods in each country it operates in:</p>
                                <ol type='a'>
                                    <li>
                                        <p><b>Credit Card</b></p>
                                        <pCard payments are processed through third-party payment channels and the type of credit cards accepted by these payment channels may vary depending on the jurisdiction you are in.></p>
                                    </li>
                                    <li>
                                        <p><b>Cash on Delivery (COD)</b></p>
                                        <p>Nightcat Digital Solutions (JM0919865-V) provides COD services in selected countries. Buyers may pay cash directly to the deliver agent upon their receipt of the purchased item.</p>
                                    </li>
                                    <li>
                                        <p><b>Bank Transfer</b></p>
                                        <p>Buyer may make payments through an Automated Teller Machine or internet bank transfer (“Bank Transfer”) to our designated Nightcat Digital Solutions (JM0919865-V) Guarantee Account (as defined in Section 12). Buyer must provide Nightcat Digital Solutions (JM0919865-V) with the transfer receipt or payment transaction reference for verification purposes through the ‘Upload Receipt’ function found in Nightcat Digital Solutions (JM0919865-V)’s app as payment confirmation. If payment confirmation is not received by Nightcat Digital Solutions (JM0919865-V) within three (3) days, Buyer’s order will be cancelled.</p>
                                    </li>
                                    <li>
                                        <p><b>Instalment Purchase Plan</b></p>
                                        <p>Buyers may pay via instalment for orders exceeding RM 500. Payment via instalments are processed through third-party channels. The banks that currently support instalment plans are Maybank and Public Bank .</p>
                                    </li>
                                </ol>
                                <p>9.2 Buyer may only change their preferred mode of payment for their purchase prior to making payment.</p>
                                <p>9.3 Nightcat Digital Solutions (JM0919865-V) takes no responsibility and assume no liability for any loss or damages to Buyer arising from shipping information and/or payment information entered by Buyer or wrong remittance by Buyer in connection with the payment for the items purchased. We reserve the right to check whether Buyer is duly authorised to use certain payment method, and may suspend the transaction until such authorisation is confirmed or cancel the relevant transaction where such confirmation is not available.</p>
                            ",
                            BM: "
                                <p>9.1 Nightcat Digital Solutions (JM0919865-V) supports one or more of the following payment methods in each country it operates in:</p>
                                <ol type='a'>
                                    <li>
                                        <p><b>Credit Card</b></p>
                                        <pCard payments are processed through third-party payment channels and the type of credit cards accepted by these payment channels may vary depending on the jurisdiction you are in.></p>
                                    </li>
                                    <li>
                                        <p><b>Cash on Delivery (COD)</b></p>
                                        <p>Nightcat Digital Solutions (JM0919865-V) provides COD services in selected countries. Buyers may pay cash directly to the deliver agent upon their receipt of the purchased item.</p>
                                    </li>
                                    <li>
                                        <p><b>Bank Transfer</b></p>
                                        <p>Buyer may make payments through an Automated Teller Machine or internet bank transfer (“Bank Transfer”) to our designated Nightcat Digital Solutions (JM0919865-V) Guarantee Account (as defined in Section 12). Buyer must provide Nightcat Digital Solutions (JM0919865-V) with the transfer receipt or payment transaction reference for verification purposes through the ‘Upload Receipt’ function found in Nightcat Digital Solutions (JM0919865-V)’s app as payment confirmation. If payment confirmation is not received by Nightcat Digital Solutions (JM0919865-V) within three (3) days, Buyer’s order will be cancelled.</p>
                                    </li>
                                    <li>
                                        <p><b>Instalment Purchase Plan</b></p>
                                        <p>Buyers may pay via instalment for orders exceeding RM 500. Payment via instalments are processed through third-party channels. The banks that currently support instalment plans are Maybank and Public Bank .</p>
                                    </li>
                                </ol>
                                <p>9.2 Buyer may only change their preferred mode of payment for their purchase prior to making payment.</p>
                                <p>9.3 Nightcat Digital Solutions (JM0919865-V) takes no responsibility and assume no liability for any loss or damages to Buyer arising from shipping information and/or payment information entered by Buyer or wrong remittance by Buyer in connection with the payment for the items purchased. We reserve the right to check whether Buyer is duly authorised to use certain payment method, and may suspend the transaction until such authorisation is confirmed or cancel the relevant transaction where such confirmation is not available.</p>
                            ",
                            CN: "
                                <p>9.1 Nightcat Digital Solutions (JM0919865-V) 在其运营所在的每个国家/地区支持以下一种或多种付款方式: </p>
                                <ol type='i'>
                                    <li>
                                        <p><b>信用卡</b></p>
                                        <p>信用卡支付是通过第三方支付渠道处理的，这些支付渠道接受的信用卡类型可能因您所在的司法管辖区而异。</p>
                                    </li>
                                    <li>
                                        <p><b>货到付款 (COD)<b/></p>
                                        <p>Nightcat Digital Solutions (JM0919865-V) 在选定的国家/地区提供 COD 服务。买家可以在收到购买的物品后直接向送货代理支付现金。</p>
                                    </li>
                                    <li>
                                        <p><b>银行转账</b></p>
                                        <p>买方可以通过自动柜员机或网上银行转账（“银行转账”）向我们指定的 Nightcat Digital Solutions (JM0919865-V) 担保账户（定义见第 12 条）付款。买家必须通过 Nightcat Digital Solutions (JM0919865-V) 应用程序中的“上传收据”功能向 Nightcat Digital Solutions (JM0919865-V) 提供转账收据或付款交易参考以进行验证，作为付款确认。如果 Nightcat Digital Solutions (JM0919865-V) 未在三 (3) 天内收到付款确认，则买家的订单将被取消。</p>
                                    </li>
                                    <li>
                                        <p><b>分期购买计划</b></p>
                                        <p>对于超过 RM 500 的订单，买家可以分期付款。分期付款是通过第三方渠道处理的。目前支持分期付款计划的银行是马来亚银行和大众银行。</p>
                                    </li>
                                </ol>
                                <p>9.2 买方只能在付款前更改其首选的购买付款方式。</p>
                                <p>9.3 对于因买方输入的运输信息和/或付款信息或买方就购买的物品付款而错误汇款而给买方造成的任何损失或损害，Nightcat Digital Solutions (JM0919865-V) 不承担任何责任。我们保留检查买方是否被正式授权使用某种付款方式的权利，并可能暂停交易直到该授权得到确认或在无法获得该确认时取消相关交易。</p>
                            "
                        }
                    },{
                        # BM is partially in English
                        title: {
                            EN: "SELLER WALLET",
                            BM: "SELLER WALLET",
                            CN: "卖家钱包"
                        },
                        description: {
                            EN: "
                                <p>10.1 Your Account allows the storage of money you receive from your sales proceeds made on the Platform (“Seller Wallet”). The sum of this money, minus any withdrawals, will be reflected as your Seller Wallet’s balance.</p>
                                <p>10.2 You may transfer funds from your Seller Wallet (up to the amount of your Nightcat Digital Solutions (JM0919865-V) Wallet balance) to your linked bank account (“Linked Account”) by submitting a transfer request (“Withdrawal Request”) a maximum of once per day. Nightcat Digital Solutions (JM0919865-V) may also automatically transfer funds from your Seller Wallet to your Linked Account on a regular basis, as determined by Nightcat Digital Solutions (JM0919865-V). Nightcat Digital Solutions (JM0919865-V) shall only process such transfers on business days and such transfers may take up to two business days to be credited to your Linked Account.</p>
                                <p>10.3 Sellers are entitled to one (1) free Withdrawal Request per week (“Weekly Withdrawal Limit”). Nightcat Digital Solutions (JM0919865-V) may impose a fee of RM0.12 for each additional Withdrawal Request made in excess of the Weekly Withdrawal Limit (“Withdrawal Fee”). The Withdrawal Fee is subjected to Sales and Service Tax (“SST”). The Weekly Withdrawal Limit and the Withdrawal Fee are subject to change at Nightcat Digital Solutions (JM0919865-V)’s discretion.</p>
                                <p>10.4 Money from your sale of items on Nightcat Digital Solutions (JM0919865-V) shall be credited to your Seller Wallet within three (3) days after the item is delivered to Buyer or immediately after Buyer has acknowledged that they have received the item.</p>
                                <p>10.5 Once submitted, you may not modify or cancel a Withdrawal Request.</p>
                                <p>10.6 If there is an error in the processing of any transaction, you authorize us to initiate debit or credit entries to your designated bank account, to correct such error, provided that any such correction is made in accordance with applicable laws and regulations. If we are unable to debit your designated bank account for any reason, you authorize us to resubmit the debit, plus any applicable fees, to any other bank account or payment instrument that you have on file with us or to deduct the debit and applicable fees from your Seller Wallet in the future. If we are unable to credit your Alternative Account, for any reason, we reserve our right to handle or process such money in accordance with the applicable law, including the Unclaimed Moneys Act 1965.</p>
                                <p>10.7 You authorize us to initiate debit or credit entries to your Seller Wallet:</p>
                                <ol type='i'>
                                    <li>to correct any errors in the processing of any transaction;</li>
                                    <li>(where Nightcat Digital Solutions (JM0919865-V) has determined that you have engaged in fraudulent or suspicious activity and/or transactions;</li>
                                    <li>in connection with any lost, damaged or incorrect items;</li>
                                    <li>in connection with any rewards or rebates;</li>
                                    <li>in connection with any uncharged fees;</li>
                                    <li>in connection with the settlement of any transaction dispute, including any compensation due to, or from, you;</li>
                                    <li>in connection with any banned items or items that are detained by customs;</li>
                                    <li>in connection with any change of mind agreed to by both Buyer and Seller; and</li>
                                    <li>to purchase Advertising Credits where you have activated the Advertising Credits Top Up Feature and your Advertising Credits have fallen below your Advertising Credits Minimum Amount.</li>
                                </ol>
                            ",
                            BM: "
                                <p>10.1 Your Account allows the storage of money you receive from your sales proceeds made on the Platform (“Seller Wallet”). The sum of this money, minus any withdrawals, will be reflected as your Seller Wallet’s balance.</p>
                                <p>10.2 You may transfer funds from your Seller Wallet (up to the amount of your Nightcat Digital Solutions (JM0919865-V) Wallet balance) to your linked bank account (“Linked Account”) by submitting a transfer request (“Withdrawal Request”) a maximum of once per day. Nightcat Digital Solutions (JM0919865-V) may also automatically transfer funds from your Seller Wallet to your Linked Account on a regular basis, as determined by Nightcat Digital Solutions (JM0919865-V). Nightcat Digital Solutions (JM0919865-V) shall only process such transfers on business days and such transfers may take up to two business days to be credited to your Linked Account.</p>
                                #{
                                    # English end here
                                }
                                <p>10.3 Penjual berhak mendapat satu (1) Permintaan Pengeluaran percuma setiap minggu (“Had Pengeluaran Mingguan”). Nightcat Digital Solutions (JM0919865-V) boleh mengenakan fi sebanyak RM0.12 untuk setiap Permintaan Pengeluaran tambahan yang dibuat melebihi Had Pengeluaran Mingguan (“Yuran Pengeluaran”). Yuran Pengeluaran adalah tertakluk kepada Cukai Jualan dan Perkhidmatan (“SST”). Had Pengeluaran Mingguan dan Yuran Pengeluaran tertakluk kepada perubahan mengikut budi bicara Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>10.4 Wang daripada jualan barangan anda di Nightcat Digital Solutions (JM0919865-V) akan dikreditkan ke Dompet Penjual anda dalam masa tiga (3) hari selepas item dihantar kepada Pembeli atau serta-merta selepas Pembeli mengakui bahawa mereka telah menerima item tersebut.</p>
                                <p>10.5 Setelah diserahkan, anda tidak boleh mengubah suai atau membatalkan Permintaan Pengeluaran.</p>
                                <p>10.6 Jika terdapat ralat dalam pemprosesan sebarang transaksi, anda memberi kuasa kepada kami untuk memulakan kemasukan debit atau kredit ke akaun bank anda yang ditetapkan, untuk membetulkan ralat tersebut, dengan syarat bahawa sebarang pembetulan sedemikian dibuat mengikut undang-undang dan peraturan yang berkenaan. Jika kami tidak dapat mendebit akaun bank anda yang ditetapkan atas apa-apa sebab, anda memberi kuasa kepada kami untuk menyerahkan semula debit, ditambah dengan sebarang yuran yang berkenaan, ke mana-mana akaun bank lain atau instrumen pembayaran yang anda ada dalam fail dengan kami atau untuk memotong debit dan yuran yang berkenaan. daripada Dompet Penjual anda pada masa hadapan. Jika kami tidak dapat mengkreditkan Akaun Alternatif anda, atas sebarang sebab, kami berhak untuk mengendalikan atau memproses wang tersebut mengikut undang-undang yang terpakai, termasuk Akta Wang Tidak Dituntut 1965.</p>
                                <p>10.7 Anda membenarkan kami untuk memulakan kemasukan debit atau kredit ke Dompet Penjual anda:</p>
                                <ol type='i'>
                                    <li>untuk membetulkan sebarang kesilapan dalam pemprosesan sebarang transaksi;</li>
                                    <li>di mana Nightcat Digital Solutions (JM0919865-V) telah menentukan bahawa anda telah terlibat dalam aktiviti dan/atau transaksi penipuan atau mencurigakan;</li>
                                    <li>berkaitan dengan mana-mana item yang hilang, rosak atau tidak betul;</li>
                                    <li>berkaitan dengan sebarang ganjaran atau rebat;</li>
                                    <li>berkaitan dengan apa-apa bayaran yang tidak dikenakan;</li>
                                    <li>berkaitan dengan penyelesaian apa-apa pertikaian transaksi, termasuk apa-apa pampasan yang disebabkan oleh, atau daripada, anda;</li>
                                    <li>berkaitan dengan apa-apa barang terlarang atau barang yang ditahan oleh kastam;</li>
                                    <li>berkaitan dengan sebarang perubahan fikiran yang dipersetujui oleh kedua-dua Pembeli dan Penjual; dan</li>
                                    <li>untuk membeli Kredit Pengiklanan di mana anda telah mengaktifkan Ciri Tambah Nilai Kredit Pengiklanan dan Kredit Pengiklanan anda telah jatuh di bawah Jumlah Minimum Kredit Pengiklanan anda.</li>
                                </ol>
                            ",
                            CN: "
                                <p>10.1 您的账户允许存储您从平台上的销售收益（“卖家钱包”）中获得的资金。这笔钱的总和减去任何提款，将反映为您的卖家钱包的余额。</p>
                                <p>10.2 您可以通过每天最多提交一次转账请求（“提款请求”）将资金从您的卖家钱包（不超过您的 Nightcat Digital Solutions (JM0919865-V) 钱包余额）转账到您的关联银行账户（“关联账户”）。Nightcat Digital Solutions (JM0919865-V) 还可以定期自动将资金从您的卖家钱包转移到您的关联账户，具体由 Nightcat Digital Solutions (JM0919865-V) 决定。Nightcat Digital Solutions (JM0919865-V) 仅会在工作日处理此类转账，此类转账最多可能需要两个工作日才能记入您的关联账户。</p>
                                <p>10.3 卖家每周有权获得一 (1) 次免费提款请求（“每周提款限额”）。对于超出每周提款限额的每个额外提款请求，Nightcat Digital Solutions (JM0919865-V) 可能会收取 RM0.12 的费用（“提款费”）。提款费需缴纳销售和服务税（“SST”）。Nightcat Digital Solutions (JM0919865-V) 可自行决定更改每周提款限额和提款费用。</p>
                                <p>10.4 您在 Nightcat Digital Solutions (JM0919865-V) 上销售商品的款项应在商品交付给买家后三 (3) 天内或在买家确认收到商品后立即记入您的卖家钱包。</p>
                                <p>10.5 一旦提交，您不得修改或取消提款请求。</p>
                                <p>10.6 如果在处理任何交易时出现错误，您授权我们向您指定的银行账户发起借记或贷记分录，以更正此类错误，前提是任何此类更正均符合适用的法律法规。如果我们因任何原因无法从您指定的银行账户中扣款，您授权我们将扣款及任何适用费用重新提交至您在我们这里存档的任何其他银行账户或支付工具，或扣除扣款和适用费用将来从您的卖家钱包中获取。如果我们因任何原因无法将您的替代账户记入贷方，我们保留根据适用法律（包括 1965 年无人认领款项法）处理或处理此类款项的权利。</p>
                                <p>10.7 您授权我们向您的卖家钱包发起借记或贷记条目：</p>
                                <ol type='i'>
                                    <li>更正任何交易处理过程中的任何错误；</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) 确定您从事欺诈或可疑活动和/或交易；</li>
                                    <li>与任何丢失、损坏或不正确的物品有关；</li>
                                    <li>与任何奖励或回扣有关；</li>
                                    <li>与任何未收取的费用有关；</li>
                                    <li>与任何交易纠纷的解决有关，包括因您或来自您的任何补偿；</li>
                                    <li>与任何违禁物品或被海关扣留的物品有关；</li>
                                    <li>与买卖双方同意的任何改变有关；和</li>
                                    <li>在您激活了广告积分充值功能并且您的广告积分低于您的广告积分最低金额的情况下购买广告积分。</li>
                                </ol>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Nightcat Digital Solutions (JM0919865-V)PAY",
                            BM: "Nightcat Digital Solutions (JM0919865-V)PAY",
                            CN: "购物支付"
                        },
                        description: {
                            EN: "
                                <p>11.1 Where you have both an Account with Nightcat Digital Solutions (JM0919865-V) and an account with Nightcat Digital Solutions Pay (“Nightcat Digital Solutions Pay”), you authorise Nightcat Digital Solutions (JM0919865-V) to disclose such information to Nightcat Digital Solutions (JM0919865-V) Pay as is necessary for Nightcat Digital Solutions (JM0919865-V) Pay to provide the Services (as defined in the Nightcat Digital Solutions (JM0919865-V)Pay Terms of Service) to you, including but not limited to any payment details associated with your Account.</p>
                            ",
                            BM: "
                                <p>11.1 Apabila anda mempunyai kedua-dua Akaun dengan Nightcat Digital Solutions (JM0919865-V) dan akaun dengan Nightcat Digital Solutions (JM0919865-V) Pay . (“Nightcat Digital Solutions (JM0919865-V) Pay”), anda membenarkan Nightcat Digital Solutions (JM0919865-V) untuk mendedahkan maklumat tersebut kepada Nightcat Digital Solutions (JM0919865-V) Pay sebagaimana yang diperlukan untuk Nightcat Digital Solutions (JM0919865-V) Pay menyediakan Perkhidmatan (seperti yang ditakrifkan dalam Syarat Nightcat Digital Solutions (JM0919865-V) Pay bagi Perkhidmatan) kepada anda, termasuk tetapi tidak terhad kepada sebarang butiran pembayaran yang dikaitkan dengan Akaun anda.</p>
                            ",
                            CN: "
                                <p>11.1 如果您同时拥有 Nightcat Digital Solutions (JM0919865-V) 账户和 Nightcat Digital Solutions (JM0919865-V) Pay（“Nightcat Digital Solutions (JM0919865-V) Pay”）账户，您授权 Nightcat Digital Solutions (JM0919865-V) 向 Nightcat Digital Solutions (JM0919865-V) Pay 披露此类信息，这是 Nightcat Digital Solutions (JM0919865-V)Pay 提供服务所必需的（定义见 Nightcat Digital Solutions (JM0919865-V)Pay服务），包括但不限于与您的帐户相关的任何付款详细信息。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Nightcat Digital Solutions (JM0919865-V) GUARANTEE",
                            BM: "JAMINAN Nightcat Digital Solutions (JM0919865-V)",
                            CN: "店铺保证"
                        },
                        description: {
                            EN: "
                                <p>12.1 Nightcat Digital Solutions (JM0919865-V) Guarantee is a service provided by Nightcat Digital Solutions (JM0919865-V) or its authorised agent to protect purchases. To protect against the risk of liability, payment for purchases made to Seller using the Services will be held by Nightcat Digital Solutions (JM0919865-V) or its authorised agent (“Nightcat Digital Solutions (JM0919865-V) Guarantee Account”). Seller will not receive interest or other earnings from the sum you have paid into Nightcat Digital Solutions (JM0919865-V) Guarantee Account.</p>
                                <p>12.2 After Buyer makes payment for his/her order (“Buyer’s Purchase Monies”), Buyer’s Purchase Monies will be held in Nightcat Digital Solutions (JM0919865-V) Guarantee Account until:</p>
                                <ol type='i'>
                                    <li>Buyer sends confirmation to Nightcat Digital Solutions (JM0919865-V) that Buyer has received his/her goods, in which case, unless 12.2(d) applies, Nightcat Digital Solutions (JM0919865-V) will release Buyer’s Purchase Monies (less the Seller’s proportion of the Shipping fee (if applicable), the Transaction Fee and Tax Amount (defined below), and (if applicable) the Cross Border Fee (defined below)) in Nightcat Digital Solutions (JM0919865-V) Guarantee Account to Seller;</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) Guarantee Period (or any approved extension under 12.3) expires, in which case, unless 12.2(c) or 12.2(d) applies, Nightcat Digital Solutions (JM0919865-V) will release Buyer’s Purchase Monies  (less  the Seller’s proportion of the Shipping Fee (if applicable), the Transaction Fee and Tax Amount (defined below), and (if applicable) the Cross Border Fee (defined below)) in Nightcat Digital Solutions (JM0919865-V) Guarantee Account to Seller;</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) determines that Buyer’s application for a return of goods and/or refund is successful, in which case, unless 12.2(d) applies, Nightcat Digital Solutions (JM0919865-V) will provide a refund to Buyer, subject to and in accordance with the Refunds and Return Policy;</li>
                                    <li>such other time as Nightcat Digital Solutions (JM0919865-V) reasonably determines that a distribution of Buyer’s Purchase Monies (less  the Seller’s proportion of the Shipping Fee (if applicable), the Transaction Fee and Tax Amount (defined below), and (if applicable) the Cross Border Fee (defined below)) is appropriate, including, without limitation, where it deems reasonably necessary to comply with applicable law or a court order or to enforce these Terms of Service.</li>
                                </ol>
                                <p>Nightcat Digital Solutions (JM0919865-V) Guarantee is only offered to Buyers who have made payment through the channels provided by Nightcat Digital Solutions (JM0919865-V) into Nightcat Digital Solutions (JM0919865-V) Guarantee Account. Offline arrangements between Buyer and Seller will not be covered under Nightcat Digital Solutions (JM0919865-V) Guarantee.</p>
                                <p>12.3 Payments made through Nightcat Digital Solutions (JM0919865-V) channels will be held in the Nightcat Digital Solutions (JM0919865-V) Guarantee Account for a specified period of time (the “Nightcat Digital Solutions (JM0919865-V) Guarantee Period”). To find out more about the Nightcat Digital Solutions (JM0919865-V) Guarantee Period, please click this link. Buyer may apply for a one-time extension of Nightcat Digital Solutions (JM0919865-V) Guarantee Period prior to the expiry of the applicable Nightcat Digital Solutions (JM0919865-V) Guarantee Period, subject to and in accordance with the Refunds and Return Policy. Upon Buyer’s application, Nightcat Digital Solutions (JM0919865-V) Guarantee Period may be extended for a maximum period of three (3) days unless Nightcat Digital Solutions (JM0919865-V) in its sole discretion determines that a longer extension is appropriate or required.</p>
                                <p>12.4 If, for any reason, the Seller's bank account cannot be credited and/or the Seller cannot be contacted, Nightcat Digital Solutions (JM0919865-V) will use reasonable endeavours to contact the Seller using the contact details provided by him/her.  In the event that the Seller cannot be contacted for more than twelve (12) months after the become due to the Seller and the Buyer’s Purchase Monies remain unclaimed, we reserve our right to handle or process such money in accordance with the applicable law, including the Unclaimed Moneys Act 1965.</p>
                                <p>12.5 Seller/Buyer must be the beneficial owner of the Account and conduct transaction on the Site only on behalf of him or herself. Nightcat Digital Solutions (JM0919865-V) may require Seller or Buyer to provide his or her personal data such as recent identity photograph, bank account details and/or any other such documentation necessary, for verification purposes, including verification required by third party payment processing and logistic service providers. Seller/Buyer hereby grants Nightcat Digital Solutions (JM0919865-V) his/her consent to use or provide to third party his/her personal data to facilitate his/her use of the Site. Further, Seller/Buyer authorises Nightcat Digital Solutions (JM0919865-V) to use his/her personal data to make any inquires we consider necessary to validate his/her identity with the appropriate entity such as his/her bank. For more information in relation to how Nightcat Digital Solutions (JM0919865-V) handles your personal information, please visit our Privacy Policy page.</p>
                                <p>12.6 The Nightcat Digital Solutions (JM0919865-V) Guarantee is in addition and without limitation to Buyer’s and Seller’s obligations under applicable law, which may go above and beyond what is provided for by the Nightcat Digital Solutions (JM0919865-V) Guarantee. The Nightcat Digital Solutions (JM0919865-V) Guarantee is neither intended nor designed to assist Buyer or Seller in complying with its own legal obligations, for which each party will remain solely responsible, and Nightcat Digital Solutions (JM0919865-V) accepts no liability in connection with the same. Without limitation, the Nightcat Digital Solutions (JM0919865-V) Guarantee does not constitute a product warranty.</p>
                                <p>12.7 Buyer and Seller acknowledge and agree that Nightcat Digital Solutions (JM0919865-V)’s decision (including any appeals) in respect of and relating to any issues concerning the Nightcat Digital Solutions (JM0919865-V) Guarantee is final.</p>
                                <p>12.8 For the avoidance of doubt, any transactions not conducted on the Site will not qualify for the protection offered by Nightcat Digital Solutions (JM0919865-V) Guarantee.</p>
                            ",
                            BM: "
                                <p>12.1 Jaminan Nightcat Digital Solutions (JM0919865-V) ialah perkhidmatan yang disediakan oleh Nightcat Digital Solutions (JM0919865-V) atau ejen sahnya untuk melindungi pembelian. Untuk melindungi daripada risiko liabiliti, pembayaran untuk pembelian yang dibuat kepada Penjual menggunakan Perkhidmatan akan dipegang oleh Nightcat Digital Solutions (JM0919865-V) atau ejen sahnya (“Akaun Jaminan Nightcat Digital Solutions (JM0919865-V)”). Penjual tidak akan menerima faedah atau pendapatan lain daripada jumlah yang telah anda bayar ke dalam Akaun Jaminan Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>12.2 Selepas Pembeli membuat pembayaran untuk pesanannya (“Wang Belian Pembeli”), Wang Belian Pembeli akan disimpan dalam Akaun Jaminan Nightcat Digital Solutions (JM0919865-V) sehingga:</p>
                                <ol type='a'>
                                    <li>Pembeli menghantar pengesahan kepada Nightcat Digital Solutions (JM0919865-V) bahawa Pembeli telah menerima barangannya, dalam kes ini, melainkan 12.2(d) terpakai, Nightcat Digital Solutions (JM0919865-V) akan mengeluarkan Wang Belian Pembeli (tolak bahagian Penjual bagi yuran Penghantaran (jika berkenaan), Transaksi Jumlah Yuran dan Cukai (ditakrifkan di bawah), dan (jika berkenaan) Yuran Merentas Sempadan (ditakrifkan di bawah)) dalam Akaun Jaminan Nightcat Digital Solutions (JM0919865-V) kepada Penjual;</li>
                                    <li>Tempoh Jaminan Nightcat Digital Solutions (JM0919865-V) (atau mana-mana lanjutan yang diluluskan di bawah 12.3) tamat, dalam kes ini, melainkan 12.2(c) atau 12.2(d) terpakai, Nightcat Digital Solutions (JM0919865-V) akan mengeluarkan Wang Belian Pembeli (tolak bahagian Penjual bagi Yuran Penghantaran (jika berkenaan). ), Yuran Transaksi dan Amaun Cukai (ditakrifkan di bawah), dan (jika berkenaan) Yuran Merentas Sempadan (ditakrifkan di bawah)) dalam Akaun Jaminan Nightcat Digital Solutions (JM0919865-V) kepada Penjual;</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) menentukan bahawa permohonan Pembeli untuk pemulangan barang dan/atau bayaran balik berjaya, dalam hal ini, melainkan 12.2(d) terpakai, Nightcat Digital Solutions (JM0919865-V) akan memberikan bayaran balik kepada Pembeli, tertakluk kepada dan menurut Polisi Bayaran Balik dan Pemulangan ;</li>
                                    <li>masa lain yang Nightcat Digital Solutions (JM0919865-V) secara munasabah menentukan bahawa pengagihan Wang Belian Pembeli (tolak bahagian Penjual bagi Yuran Penghantaran (jika berkenaan), Yuran Transaksi dan Amaun Cukai (ditakrifkan di bawah), dan (jika berkenaan) Rentas Sempadan Yuran (ditakrifkan di bawah)) adalah bersesuaian, termasuk, tanpa had, jika difikirkan munasabah perlu untuk mematuhi undang-undang yang terpakai atau perintah mahkamah atau untuk menguatkuasakan Syarat Perkhidmatan ini.</li>
                                </ol>
                                <p>Jaminan Nightcat Digital Solutions (JM0919865-V) hanya ditawarkan kepada Pembeli yang telah membuat pembayaran melalui saluran yang disediakan oleh Nightcat Digital Solutions (JM0919865-V) ke dalam Akaun Jaminan Nightcat Digital Solutions (JM0919865-V). Pengaturan luar talian antara Pembeli dan Penjual tidak akan dilindungi di bawah Jaminan Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>12.3 Pembayaran yang dibuat melalui saluran Nightcat Digital Solutions (JM0919865-V) akan disimpan dalam Akaun Jaminan Nightcat Digital Solutions (JM0919865-V) untuk tempoh masa tertentu ('Tempoh Jaminan Nightcat Digital Solutions (JM0919865-V)'). Untuk mengetahui lebih lanjut mengenai Tempoh Jaminan Nightcat Digital Solutions (JM0919865-V), sila klik pautan ini  . Pembeli boleh memohon lanjutan satu kali Tempoh Jaminan Nightcat Digital Solutions (JM0919865-V) sebelum tamat Tempoh Jaminan Nightcat Digital Solutions (JM0919865-V) yang berkenaan, tertakluk kepada dan menurut Polisi Bayaran Balik dan Pemulangan. Atas permohonan Pembeli, Tempoh Jaminan Nightcat Digital Solutions (JM0919865-V) boleh dilanjutkan untuk tempoh maksimum tiga (3) hari melainkan Nightcat Digital Solutions (JM0919865-V) mengikut budi bicara mutlaknya menentukan bahawa lanjutan yang lebih panjang adalah sesuai atau diperlukan.</p>
                                <p>12.4 Jika, atas sebarang sebab, akaun bank Penjual tidak boleh dikreditkan dan/atau Penjual tidak dapat dihubungi, Nightcat Digital Solutions (JM0919865-V) akan menggunakan usaha yang munasabah untuk menghubungi Penjual menggunakan butiran hubungan yang diberikan olehnya. Sekiranya Penjual tidak dapat dihubungi lebih daripada dua belas (12) bulan selepas terhutang kepada Penjual dan Wang Belian Pembeli kekal tidak dituntut, kami berhak untuk mengendalikan atau memproses wang tersebut mengikut undang-undang yang terpakai, termasuk Akta Wang Tidak Dituntut 1965.</p>
                                <p>12.5 Penjual/Pembeli mestilah pemilik benefisial Akaun dan menjalankan transaksi di Tapak hanya bagi pihak dia sendiri. Nightcat Digital Solutions (JM0919865-V) mungkin memerlukan Penjual atau Pembeli untuk memberikan data peribadinya seperti gambar identiti terkini, butiran akaun bank dan/atau sebarang dokumentasi lain yang diperlukan, untuk tujuan pengesahan, termasuk pengesahan yang diperlukan oleh pemprosesan pembayaran pihak ketiga dan penyedia perkhidmatan logistik. Penjual/Pembeli dengan ini memberikan Nightcat Digital Solutions (JM0919865-V) kebenarannya untuk menggunakan atau memberikan data peribadinya kepada pihak ketiga untuk memudahkan penggunaan Laman tersebut. Selanjutnya, Penjual/Pembeli memberi kuasa kepada Nightcat Digital Solutions (JM0919865-V) untuk menggunakan data peribadinya untuk membuat sebarang pertanyaan yang kami anggap perlu untuk mengesahkan identitinya dengan entiti yang sesuai seperti banknya. Untuk maklumat lanjut berhubung dengan cara Nightcat Digital Solutions (JM0919865-V) mengendalikan maklumat peribadi anda, Halaman Dasar Privasi .</p>
                                <p>12.6 Jaminan Nightcat Digital Solutions (JM0919865-V) adalah tambahan dan tanpa had kepada kewajipan Pembeli dan Penjual di bawah undang-undang yang terpakai, yang mungkin melebihi dan melebihi apa yang diperuntukkan oleh Jaminan Nightcat Digital Solutions (JM0919865-V). Jaminan Nightcat Digital Solutions (JM0919865-V) tidak bertujuan atau direka untuk membantu Pembeli atau Penjual dalam mematuhi kewajipan undang-undangnya sendiri, yang mana setiap pihak akan kekal bertanggungjawab sepenuhnya, dan Nightcat Digital Solutions (JM0919865-V) tidak menerima liabiliti berkaitan dengan perkara yang sama. Tanpa had, Jaminan Nightcat Digital Solutions (JM0919865-V) tidak membentuk jaminan produk.</p>
                                <p>12.7 Pembeli dan Penjual mengakui dan bersetuju bahawa keputusan Nightcat Digital Solutions (JM0919865-V) (termasuk sebarang rayuan) berkenaan dan berkaitan dengan sebarang isu berkaitan Jaminan Nightcat Digital Solutions (JM0919865-V) adalah muktamad.</p>
                                <p>12.8 Untuk mengelakkan keraguan, sebarang transaksi yang tidak dijalankan di Laman ini tidak akan layak untuk perlindungan yang ditawarkan oleh Nightcat Digital Solutions (JM0919865-V) Guarantee.</p>
                            ",
                            CN: "
                                <p>12.1 虾皮保证是虾皮或其授权代理人为保护购买而提供的服务。为避免责任风险，使用服务向卖方购买的款项将由 Nightcat Digital Solutions (JM0919865-V) 或其授权代理人（“Nightcat Digital Solutions (JM0919865-V) 保证账户”）持有。卖家不会从您支付到 Nightcat Digital Solutions (JM0919865-V) 担保账户的金额中获得利息或其他收入。</p>
                                <p>12.2 买家为其订单付款后（“买家的购买款项”），买家的购买款项将保留在 Nightcat Digital Solutions (JM0919865-V) 担保账户中，直至：</p>
                                <ol type='a'>
                                    <li>买方向 Nightcat Digital Solutions (JM0919865-V) 发送确认买方已收到他/她的货物，在这种情况下，除非 12.2(d) 适用，Nightcat Digital Solutions (JM0919865-V) 将释放买方的购买款项（减去卖方的运费比例（如果适用），交易Nightcat Digital Solutions (JM0919865-V) 担保账户中向卖家支付的费用和税款（定义见下文），以及（如果适用）跨境费用（定义见下文）；</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) 保证期（或 12.3 项下任何批准的延期）到期，在这种情况下，除非 12.2(c) 或 12.2(d) 适用，Nightcat Digital Solutions (JM0919865-V) 将释放买方的购买款项（减去卖方的运费比例（如果适用） )、Nightcat Digital Solutions (JM0919865-V) 担保账户中向卖家支付的交易费用和税款（定义见下文）以及（如适用）跨境费用（定义见下文）；</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) 确定买家的退货和/或退款申请成功，在这种情况下，除非 12.2(d) 适用，Nightcat Digital Solutions (JM0919865-V) 将根据退款和退货政策向买家退款;</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) 合理确定买方购买款项的分配（减去卖方在运费（如适用）、交易费用和税额（定义见下文）中的比例以及（如适用）跨境）的其他时间费用（定义如下））是适当的，包括但不限于它认为遵守适用法律或法院命令或执行这些服务条款有合理必要的情况。</li>
                                </ol>
                                <p>虾皮保证仅提供给通过虾皮提供的渠道向虾皮保证账户付款的买家。买家和卖家之间的线下安排将不在 Nightcat Digital Solutions (JM0919865-V) 保障范围内。</p>
                                <p>12.3 通过虾皮渠道支付的款项将在虾皮保证账户中保留一段指定的时间（“虾皮保证期”）。如需了解更多关于 Nightcat Digital Solutions (JM0919865-V) 保修期的信息，请点击此 链接。买方可以在适用的 Nightcat Digital Solutions (JM0919865-V) 保证期到期之前申请一次性延长 Nightcat Digital Solutions (JM0919865-V) 保证期，但须遵守并遵守退款和退货政策。经买方申请，Nightcat Digital Solutions (JM0919865-V) 保证期最多可延长三 (3) 天，除非 Nightcat Digital Solutions (JM0919865-V) 自行决定是否需要延长更长的时间。</p>
                                <p>12.4 如果由于任何原因无法记入卖家的银行账户和/或无法联系卖家，Nightcat Digital Solutions (JM0919865-V) 将尽合理努力使用卖家提供的联系方式与卖家联系。如果在卖方到期后十二 (12) 个月内无法联系到卖方并且买方的购买款项无人认领，我们保留根据适用法律处理或处理此类款项的权利，包括1965 年无人认领款项法。</p>
                                <p>12.5 卖方/买方必须是账户的实益拥有人，并仅代表他或她在网站上进行交易。Nightcat Digital Solutions (JM0919865-V) 可能会要求卖方或买方提供他或她的个人数据，例如最近的身份照片、银行账户详细信息和/或任何其他此类必要文件，以用于验证目的，包括第三方支付处理和物流服务提供商要求的验证。卖家/买家在此同意 Nightcat Digital Solutions (JM0919865-V) 使用或向第三方提供他/她的个人数据，以方便他/她使用本网站。此外，卖家/买家授权 Nightcat Digital Solutions (JM0919865-V) 使用他/她的个人数据进行任何我们认为必要的查询，以通过适当的实体（例如他/她的银行）验证他/她的身份。有关 Nightcat Digital Solutions (JM0919865-V) 如何处理您的个人信息的更多信息， 隐私政策页面。</p>
                                <p>12.6 虾皮保证是对适用法律规定的买方和卖方义务的补充，但不限于，这些义务可能超出虾皮保证的规定。Nightcat Digital Solutions (JM0919865-V) 担保无意或旨在帮助买方或卖方履行其自己的法律义务，对此，每一方都将独自承担责任，Nightcat Digital Solutions (JM0919865-V) 不承担与此相关的任何责任。在不受限制的情况下，Nightcat Digital Solutions (JM0919865-V) 保证不构成产品保证。</p>
                                <p>12.7 买方和卖方承认并同意，虾皮对虾皮保证的任何问题的决定（包括任何上诉）是最终决定。</p>
                                <p>12.8 为免生疑问，任何未在本网站上进行的交易将不符合 Nightcat Digital Solutions (JM0919865-V) Guarantee 提供的保护条件。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Nightcat Digital Solutions (JM0919865-V) COINS REWARD SYSTEM",
                            BM: "SISTEM GANJARAN SYILING Nightcat Digital Solutions (JM0919865-V)",
                            CN: "Nightcat Digital Solutions (JM0919865-V)币奖励系统"
                        },
                        description: {
                            EN: "
                                <p>13.1 Users may earn loyalty points (“Nightcat Digital Solutions (JM0919865-V) Coins”) by buying merchandises on the Site using the Nightcat Digital Solutions (JM0919865-V) Guarantee system or through participation in other Nightcat Digital Solutions (JM0919865-V) activities as Nightcat Digital Solutions (JM0919865-V) may from time to time determine (“Eligible Activities”) based on the conversion rate determined by Nightcat Digital Solutions (JM0919865-V) in its sole discretion. Generally, Nightcat Digital Solutions (JM0919865-V) Coins will be credited to a User’s Account upon the completion of a successful transaction or activity approved by Nightcat Digital Solutions (JM0919865-V). You are eligible to participate in the Nightcat Digital Solutions (JM0919865-V) Coins reward system if you are a User and your Account does not expressly exclude you from participation.</p>
                                <p>13.2 Transaction not completed on the Site using Nightcat Digital Solutions (JM0919865-V) Guarantee do not qualify for the Nightcat Digital Solutions (JM0919865-V) Coins reward system. Nightcat Digital Solutions (JM0919865-V) may at its sole discretion exclude categories of items from the Nightcat Digital Solutions (JM0919865-V) Coins reward system.</p>
                                <p>13.3 Nightcat Digital Solutions (JM0919865-V) Coins credited to Buyers have no monetary value, do not constitute  Buyer’s property and cannot be purchased, sold, transferred or redeemed for cash by Buyer.</p>
                                <p>13.4 Subject to Nightcat Digital Solutions (JM0919865-V) rules and regulation as determined, varied or modified by Nightcat Digital Solutions (JM0919865-V) from time to time, subject to any cap imposed by Nightcat Digital Solutions (JM0919865-V) at its sole discretion, User may redeem Nightcat Digital Solutions (JM0919865-V) Coins by sending a request to Nightcat Digital Solutions (JM0919865-V) and use Nightcat Digital Solutions (JM0919865-V) Coins to offset the purchase price of selected items when making purchases on the Site as advised by Nightcat Digital Solutions (JM0919865-V) from time to time. All refunds will be subject to Nightcat Digital Solutions (JM0919865-V)’s Refunds and Return Policy under Section 17.</p>
                                <p>13.5 The Nightcat Digital Solutions (JM0919865-V) Coins you redeem or donate will be deducted from your Nightcat Digital Solutions (JM0919865-V) Coins balance. Each Nightcat Digital Solutions (JM0919865-V) Coins comes with an expiry date. Do check your account details on the Site for Nightcat Digital Solutions (JM0919865-V) Coins balances and expiry date.</p>
                                <p>13.6 From time to time, we may tell you that bonus Nightcat Digital Solutions (JM0919865-V) Coins will be awarded for particular Eligible Activities. This may include but is not limited to purchases you make at participating Sellers or pursuant to specific promotional offers. We will notify you of the terms of such bonus awards if any from time to time.</p>
                                <p>13.7 If you have a dispute in relation to the number of Nightcat Digital Solutions (JM0919865-V) Coins which you have been awarded in respect of an Eligible Activity, such a dispute must be made within one (1) month from the date of the Eligible Activity. We may require you to provide evidence to support your claim.</p>
                                <p>13.8 Nightcat Digital Solutions (JM0919865-V) gives no warranty and accepts no responsibility as to the ultimate tax treatment of Nightcat Digital Solutions (JM0919865-V) Coins. You will need to check with your tax advisor whether receiving Nightcat Digital Solutions (JM0919865-V) Coins affects your tax situation.</p>
                                <p>13.9 Nightcat Digital Solutions (JM0919865-V) reserves the right to (i) discontinue the Nightcat Digital Solutions (JM0919865-V) Coins Reward System at any time at its sole discretion and (ii) cancel or suspend a User’s right to participate in Nightcat Digital Solutions (JM0919865-V) Coins Reward System, including the ability to earn and redeem Nightcat Digital Solutions (JM0919865-V) Coins at its sole discretion.</p>
                            ",
                            BM: "
                                <p>13.1 Pengguna boleh memperoleh mata kesetiaan (“Nightcat Digital Solutions (JM0919865-V) Syiling”) dengan membeli barangan di Tapak menggunakan sistem Jaminan Nightcat Digital Solutions (JM0919865-V) atau melalui penyertaan dalam aktiviti Nightcat Digital Solutions (JM0919865-V) lain yang mungkin ditentukan oleh Nightcat Digital Solutions (JM0919865-V) dari semasa ke semasa (“Aktiviti Layak”) berdasarkan kadar penukaran yang ditentukan oleh Nightcat Digital Solutions (JM0919865-V) mengikut budi bicara mutlaknya. Secara umumnya, Syiling Nightcat Digital Solutions (JM0919865-V) akan dikreditkan ke Akaun Pengguna setelah selesai transaksi atau aktiviti yang berjaya yang diluluskan oleh Nightcat Digital Solutions (JM0919865-V). Anda layak untuk mengambil bahagian dalam sistem ganjaran Syiling Nightcat Digital Solutions (JM0919865-V) jika anda seorang Pengguna dan Akaun anda tidak secara jelas mengecualikan anda daripada penyertaan.</p>
                                <p>13.2 Transaksi yang tidak selesai di Laman menggunakan Jaminan Nightcat Digital Solutions (JM0919865-V) tidak layak untuk sistem ganjaran Nightcat Digital Solutions (JM0919865-V) Coins. Nightcat Digital Solutions (JM0919865-V) boleh mengikut budi bicara mutlaknya mengecualikan kategori item daripada sistem ganjaran Syiling Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>13.3 Syiling Nightcat Digital Solutions (JM0919865-V) yang dikreditkan kepada Pembeli tidak mempunyai nilai kewangan, tidak membentuk harta Pembeli dan tidak boleh dibeli, dijual, dipindahkan atau ditebus secara tunai oleh Pembeli.</p>
                                <p>13.4 Tertakluk kepada peraturan dan peraturan Nightcat Digital Solutions (JM0919865-V) seperti yang ditentukan, diubah atau diubah suai oleh Nightcat Digital Solutions (JM0919865-V) dari semasa ke semasa, tertakluk kepada sebarang had yang dikenakan oleh Nightcat Digital Solutions (JM0919865-V) mengikut budi bicara mutlaknya, Pengguna boleh menebus Syiling Nightcat Digital Solutions (JM0919865-V) dengan menghantar permintaan kepada Nightcat Digital Solutions (JM0919865-V) dan menggunakan Syiling Nightcat Digital Solutions (JM0919865-V) untuk mengimbangi harga pembelian item terpilih semasa membuat pembelian di Laman web seperti yang dinasihatkan oleh Nightcat Digital Solutions (JM0919865-V) dari semasa ke semasa. Semua bayaran balik akan tertakluk kepada Polisi Bayaran Balik dan Pemulangan Nightcat Digital Solutions (JM0919865-V) di bawah Seksyen 17.</p>
                                #{
                                    # English start here
                                }
                                <p>13.5 The Nightcat Digital Solutions (JM0919865-V) Coins you redeem or donate will be deducted from your Nightcat Digital Solutions (JM0919865-V) Coins balance. Each Nightcat Digital Solutions (JM0919865-V) Coins comes with an expiry date. Do check your account details on the Site for Nightcat Digital Solutions (JM0919865-V) Coins balances and expiry date.</p>
                                <p>13.6 From time to time, we may tell you that bonus Nightcat Digital Solutions (JM0919865-V) Coins will be awarded for particular Eligible Activities. This may include but is not limited to purchases you make at participating Sellers or pursuant to specific promotional offers. We will notify you of the terms of such bonus awards if any from time to time.</p>
                                <p>13.7 If you have a dispute in relation to the number of Nightcat Digital Solutions (JM0919865-V) Coins which you have been awarded in respect of an Eligible Activity, such a dispute must be made within one (1) month from the date of the Eligible Activity. We may require you to provide evidence to support your claim.</p>
                                <p>13.8 Nightcat Digital Solutions (JM0919865-V) gives no warranty and accepts no responsibility as to the ultimate tax treatment of Nightcat Digital Solutions (JM0919865-V) Coins. You will need to check with your tax advisor whether receiving Nightcat Digital Solutions (JM0919865-V) Coins affects your tax situation.</p>
                                <p>13.9 Nightcat Digital Solutions (JM0919865-V) reserves the right to (i) discontinue the Nightcat Digital Solutions (JM0919865-V) Coins Reward System at any time at its sole discretion and (ii) cancel or suspend a User’s right to participate in Nightcat Digital Solutions (JM0919865-V) Coins Reward System, including the ability to earn and redeem Nightcat Digital Solutions (JM0919865-V) Coins at its sole discretion.</p>
                            ",
                            CN: "
                                <p>13.1 用户可以通过使用 Nightcat Digital Solutions (JM0919865-V) 保证系统在网站上购买商品或通过参与 Nightcat Digital Solutions (JM0919865-V) 不时确定的其他 Nightcat Digital Solutions (JM0919865-V) 活动（“合格活动”）来赚取忠诚度积分（“Nightcat Digital Solutions (JM0919865-V) 币”），这取决于确定的转化率由 Nightcat Digital Solutions (JM0919865-V) 自行决定。一般来说，虾皮币将在虾皮批准的成功交易或活动完成后记入用户账户。如果您是用户并且您的帐户没有明确将您排除在参与范围之外，您就有资格参与 Nightcat Digital Solutions (JM0919865-V) Coins 奖励系统。</p>
                                <p>13.2 未使用虾皮保证在网站上完成的交易不符合虾皮币奖励系统的条件。Nightcat Digital Solutions (JM0919865-V) 可自行决定从 Nightcat Digital Solutions (JM0919865-V) Coins 奖励系统中排除某些类别的物品。</p>
                                <p>13.3 贷记给买家的虾皮币没有货币价值，不构成买家的财产，买家不能购买、出售、转让或兑换现金。</p>
                                <p>13.4 根据虾皮不时确定、变更或修改的虾皮规则和条例，并受虾皮自行决定施加的任何上限的约束，用户可以通过向虾皮发送请求来兑换虾皮币，并使用虾皮币抵消根据 Nightcat Digital Solutions (JM0919865-V) 不时的建议，在网站上进行购买时所选商品的购买价格。所有退款将受第 17 条下 Nightcat Digital Solutions (JM0919865-V) 的退款和退货政策的约束。</p>
                                <p>13.5 您兑换或捐赠的虾皮币将从您的虾皮币余额中扣除。每个 Nightcat Digital Solutions (JM0919865-V) 币都有一个有效期。请务必在网站上查看 Nightcat Digital Solutions (JM0919865-V) Coins 余额和到期日的帐户详细信息。</p>
                                <p>13.6 我们可能会不时告诉您，特定的符合条件的活动将获得奖励 Nightcat Digital Solutions (JM0919865-V) 币。这可能包括但不限于您在参与的卖家处或根据特定促销优惠进行的购买。我们会不时通知您此类奖金的条款（如有）。</p>
                                <p>13.7 如果您对您在符合条件的活动中获得的虾皮币数量有争议，必须在符合条件的活动之日起一 (1) 个月内提出此类争议。我们可能会要求您提供证据来支持您的索赔。</p>
                                <p>13.8 Nightcat Digital Solutions (JM0919865-V) 对 Nightcat Digital Solutions (JM0919865-V) Coin 的最终税务处理不作任何保证，也不承担任何责任。您需要与您的税务顾问核实收到 Nightcat Digital Solutions (JM0919865-V) Coin 是否会影响您的税务状况。</p>
                                <p>13.9 Nightcat Digital Solutions (JM0919865-V) 保留 (i) 随时自行决定终止 Nightcat Digital Solutions (JM0919865-V) Coins 奖励系统和 (ii) 取消或暂停用户参与 Nightcat Digital Solutions (JM0919865-V) Coins 奖励系统的权利，包括在以下时间赚取和兑换 Nightcat Digital Solutions (JM0919865-V) Coins 的能力其全权酌情决定。</p>
                            "
                        }
                    },
                    {
                        # BM is partially in English
                        title: {
                            EN: "Nightcat Digital Solutions (JM0919865-V) COINS MARKETING SERVICES",
                            BM: "Nightcat Digital Solutions (JM0919865-V) COINS MARKETING SERVICES",
                            CN: "Nightcat Digital Solutions (JM0919865-V) 币营销服务"
                        },
                        description: {
                            EN: "
                                <p>14.1 Sellers may purchase Nightcat Digital Solutions (JM0919865-V) Coins for gratuitous distribution to Buyers for marketing purposes under the “Marketing Centre” section of the Seller Centre (“Marketing Centre”).  If you are a Seller that purchases Nightcat Digital Solutions (JM0919865-V) Coins, you will be deemed to have consented to the terms and conditions described in this Section, and any explanatory materials published on this Site, the Seller Centre or otherwise communicated to Sellers in writing (“Seller Coins Rules”).</p>
                                <p>14.2 In order to purchase Nightcat Digital Solutions (JM0919865-V) Coins, you must be an eligible Seller under the Seller Coins Rules. At the time you purchase and pay for the Nightcat Digital Solutions (JM0919865-V) Coins, your Account must not be suspended.</p>
                                <p>14.3 You may purchase Nightcat Digital Solutions (JM0919865-V) Coins via the payment methods set out in the Marketing Centre.  After payment is completed, the Nightcat Digital Solutions (JM0919865-V) Coins will be issued to your Account for giveaway to Buyers within 24 hours, and shall expire six (6) months after purchase or such other time as determined by Nightcat Digital Solutions (JM0919865-V). Except as otherwise provided in the applicable Seller Coins Rules, you may not cancel the order and/or request for a refund after you have purchased Nightcat Digital Solutions (JM0919865-V) Coins and completed the payment process.</p>
                                <p>14.4 Nightcat Digital Solutions (JM0919865-V) Coins purchased by Sellers may only be given away, free-of-charge, to Buyers via promotional channels made available in the Marketing Centre.  You may not sell, redeem, or otherwise deal in, Nightcat Digital Solutions (JM0919865-V) Coins under any circumstances.  You agree that failure to comply with this section or any of the Seller Coins Rules may, without limitation, result in the forfeiture of Nightcat Digital Solutions (JM0919865-V) Coins purchased by you, in addition to any other actions or remedies that Nightcat Digital Solutions (JM0919865-V) may take or enforce.</p>
                                <p>14.5 You understand and agree that Nightcat Digital Solutions (JM0919865-V) does not warrant or guarantee any increase in viewership or sales of your items as a result of the purchase and gratuitous distribution of Nightcat Digital Solutions (JM0919865-V) Coins.</p>
                                <p>14.6 You are advised to only purchase Nightcat Digital Solutions (JM0919865-V) Coins after fully considering your budget and intended advertising objectives. Except as otherwise provided in these Terms of Service or the Seller Coins Advertising Rules, Nightcat Digital Solutions (JM0919865-V) shall not be liable for any compensation or be subject to any liability (including but not limited to actual expenses and lost profits) for the results or intended results of purchasing Nightcat Digital Solutions (JM0919865-V) Coins.</p>
                                <p>14.7 IF, NOTWITHSTANDING ANYTHING IN THESE TERMS OF SERVICE, Nightcat Digital Solutions (JM0919865-V) IS FOUND BY A COURT OF COMPETENT JURISDICTION TO BE LIABLE (INCLUDING FOR GROSS NEGLIGENCE) IN RELATION TO THE PURCHASE BY YOU OF Nightcat Digital Solutions (JM0919865-V) COINS, THEN, TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ITS LIABILITY TO YOU OR TO ANY THIRD PARTY IS LIMITED TO THE AMOUNT PAID BY YOU FOR THE Nightcat Digital Solutions (JM0919865-V) COINS  IN QUESTION ONLY.</p>
                            ",
                            BM: "
                                <p>14.1 Sellers may purchase Nightcat Digital Solutions (JM0919865-V) Coins for gratuitous distribution to Buyers for marketing purposes under the “Marketing Centre” section of the Seller Centre (“Marketing Centre”).  If you are a Seller that purchases Nightcat Digital Solutions (JM0919865-V) Coins, you will be deemed to have consented to the terms and conditions described in this Section, and any explanatory materials published on this Site, the Seller Centre or otherwise communicated to Sellers in writing (“Seller Coins Rules”).</p>
                                <p>14.2 In order to purchase Nightcat Digital Solutions (JM0919865-V) Coins, you must be an eligible Seller under the Seller Coins Rules. At the time you purchase and pay for the Nightcat Digital Solutions (JM0919865-V) Coins, your Account must not be suspended.</p>
                                #{
                                    # English end here
                                }
                                <p>14.3 Anda boleh membeli Syiling Nightcat Digital Solutions (JM0919865-V) melalui kaedah pembayaran yang ditetapkan di Pusat Pemasaran. Selepas pembayaran selesai, Syiling Nightcat Digital Solutions (JM0919865-V) akan dikeluarkan ke Akaun anda untuk pemberian kepada Pembeli dalam masa 24 jam, dan akan tamat tempoh enam (6) bulan selepas pembelian atau masa lain seperti yang ditentukan oleh Nightcat Digital Solutions (JM0919865-V). Kecuali diperuntukkan sebaliknya dalam Peraturan Syiling Penjual yang berkenaan, anda tidak boleh membatalkan pesanan dan/atau meminta bayaran balik selepas anda membeli Syiling Nightcat Digital Solutions (JM0919865-V) dan menyelesaikan proses pembayaran.</p>
                                <p>14.4 Syiling Nightcat Digital Solutions (JM0919865-V) yang dibeli oleh Penjual hanya boleh diberikan, secara percuma, kepada Pembeli melalui saluran promosi yang disediakan di Pusat Pemasaran. Anda tidak boleh menjual, menebus, atau sebaliknya berurusan dengan, Syiling Nightcat Digital Solutions (JM0919865-V) dalam apa jua keadaan. Anda bersetuju bahawa kegagalan untuk mematuhi seksyen ini atau mana-mana Peraturan Penjual Syiling boleh, tanpa had, mengakibatkan pelucuthakan Syiling Nightcat Digital Solutions (JM0919865-V) yang dibeli oleh anda, sebagai tambahan kepada sebarang tindakan atau remedi lain yang mungkin diambil atau dikuatkuasakan oleh Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>14.5 Anda memahami dan bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) tidak menjamin atau menjamin sebarang peningkatan dalam tontonan atau jualan barangan anda hasil daripada pembelian dan pengedaran Syiling Nightcat Digital Solutions (JM0919865-V) secara percuma.</p>
                                <p>14.6 Anda dinasihatkan untuk hanya membeli Syiling Nightcat Digital Solutions (JM0919865-V) selepas mempertimbangkan sepenuhnya bajet anda dan objektif pengiklanan yang dimaksudkan. Kecuali diperuntukkan sebaliknya dalam Syarat Perkhidmatan ini atau Peraturan Pengiklanan Syiling Penjual, Nightcat Digital Solutions (JM0919865-V) tidak akan bertanggungjawab ke atas sebarang pampasan atau tertakluk kepada sebarang liabiliti (termasuk tetapi tidak terhad kepada perbelanjaan sebenar dan kehilangan keuntungan) untuk keputusan atau keputusan pembelian yang dimaksudkan. Syiling Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>14.7 JIKA, WALAUPUN APA-APA DALAM SYARAT PERKHIDMATAN INI, Nightcat Digital Solutions (JM0919865-V) DIDAPATI OLEH MAHKAMAH BIDANG KUASA YANG KOMPETEN UNTUK BERTANGGUNGJAWAB (TERMASUK ATAS KECUAIAN KASAR) BERHUBUNG DENGAN PEMBELIAN OLEH ANDA SYILING Nightcat Digital Solutions (JM0919865-V) LAXT PERMITTED, KEMUDIAN, TERHADAP SYILING Nightcat Digital Solutions (JM0919865-V) LAXT PERMITTED. , LIABILITINYA KEPADA ANDA ATAU KEPADA MANA-MANA ​​PIHAK KETIGA ADALAH TERHAD KEPADA JUMLAH YANG DIBAYAR OLEH ANDA UNTUK SYILING Nightcat Digital Solutions (JM0919865-V) YANG DIPERSOALKAN SAHAJA.</p>
                            ",
                            CN: "
                                <p>14.1 卖家可以在卖家中心（“营销中心”）的“营销中心”部分购买虾皮币，以用于营销目的无偿分发给买家。如果您是购买虾皮币的卖家，您将被视为同意本节所述的条款和条件，以及在本网站、卖家中心或以其他方式以书面形式传达给卖家的任何说明材料（“卖家币规则”）。</p>
                                <p>14.2 为了购买虾皮币，您必须是卖家币规则下的合格卖家。在您购买和支付 Nightcat Digital Solutions (JM0919865-V) 币时，您的帐户不得被暂停。</p>
                                <p>14.3 您可以通过营销中心规定的支付方式购买虾皮币。付款完成后，虾皮币将在 24 小时内发放到您的账户以赠送给买家，并在购买后六 (6) 个月或虾皮确定的其他时间到期。除非适用的卖家币规则另有规定，否则您在购买了虾皮币并完成付款流程后不得取消订单和/或要求退款。</p>
                                <p>14.4 卖家购买的 Nightcat Digital Solutions (JM0919865-V) 币只能通过营销中心提供的促销渠道免费赠送给买家。在任何情况下，您都不得出售、赎回或以其他方式交易虾皮币。您同意，除了虾皮可能采取或强制执行的任何其他行动或补救措施之外，不遵守本节或任何卖家币规则可能会但不限于导致您购买的虾皮币被没收。</p>
                                <p>14.5 您理解并同意，虾皮不保证或保证您的商品的收视率或销售额因购买和无偿分发虾皮币而增加。</p>
                                <p>14.6 建议您在充分考虑您的预算和预期广告目标后才购买虾皮币。除本服务条款或卖家币广告规则另有规定外，虾皮不对购买结果或预期结果承担任何赔偿责任或承担任何责任（包括但不限于实际费用和利润损失）虾皮币。</p>
                                <p>14.7 如果尽管这些服务条款中有任何规定，Nightcat Digital Solutions (JM0919865-V) 被具有管辖权的法院认定对您购买的 Nightcat Digital Solutions (JM0919865-V) 硬币承担责任（包括重大过失），则适用于，其对您或任何第三方的责任仅限于您为相关的 Nightcat Digital Solutions (JM0919865-V) 硬币支付的金额。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "Nightcat Digital Solutions (JM0919865-V) COINS CASHBACK VOUCHER",
                            BM: "BAUCAR BALIK TUNAI Nightcat Digital Solutions (JM0919865-V) COINS",
                            CN: "Nightcat Digital Solutions (JM0919865-V) Coins 现金返还券"
                        },
                        description: {
                            EN: "
                                <p>15.1 Users may receive a voucher entitling them to additional Nightcat Digital Solutions (JM0919865-V) Coins (the “Nightcat Digital Solutions (JM0919865-V) Coins Cashback Voucher”) on eligible purchases on the Site. Upon the completion of a successful transaction where the Nightcat Digital Solutions (JM0919865-V) Coins Cashback Voucher has been applied, additional Nightcat Digital Solutions (JM0919865-V) Coins will be credited to a User’s Account based on the conversion rate as indicated in the terms and conditions of such Nightcat Digital Solutions (JM0919865-V) Coins Cashback Voucher (“Additional Nightcat Digital Solutions (JM0919865-V) Coins Rate”) or as determined by Nightcat Digital Solutions (JM0919865-V) in its sole discretion. Nightcat Digital Solutions (JM0919865-V) Coins credited to a User following the redemption of a Nightcat Digital Solutions (JM0919865-V) Coins Cashback Voucher shall have the same terms and conditions (including in relation to expiry) as regular Nightcat Digital Solutions (JM0919865-V) Coins.</p>
                                <p>15.2 Nightcat Digital Solutions (JM0919865-V) may allow Sellers to generate their own Nightcat Digital Solutions (JM0919865-V) Coins Cashback Vouchers (each a “Seller Coins Cashback Voucher”), which Buyers may apply to eligible purchases from the Seller’s store. If you are a Seller that generates a Seller Coins Cashback Voucher, you will be deemed to have consented to the terms and conditions described in this Section.</p>
                                <p>15.3 When generating a Seller Coins Cashback Voucher, the Additional Nightcat Digital Solutions (JM0919865-V) Coins Rate will be determined by Seller at the Seller’s own discretion. Seller shall be solely responsible for the accuracy of the Additional Nightcat Digital Solutions (JM0919865-V) Coins Rate.</p>
                                <p>15.4 For each completed transaction where a Buyer successfully applies a Seller Coins Cashback Voucher, the Seller shall pay Nightcat Digital Solutions (JM0919865-V) the value of the additional Nightcat Digital Solutions (JM0919865-V) Coins credited to the Buyer (“Coins Cashback Price”). The Coins Cashback Price is calculated in Malaysian Ringgit as the number of additional Nightcat Digital Solutions (JM0919865-V) Coins to be credited to the Buyer’s Account divided by 100, rounded up to the nearest cent. The Coins Cashback Price is subject to SST (“Coins Cashback Tax Amount”), and the Seller is responsible for such Coins Cashback Tax Amount.</p>
                                <p>15.5 Following the successful completion of a transaction, Nightcat Digital Solutions (JM0919865-V) shall deduct the Coins Cashback Price and Coins Cashback Tax Amount from the Buyer’s Purchase Monies, and remit the balance to the Seller in accordance with Section 12.2. Nightcat Digital Solutions (JM0919865-V) shall issue receipts or tax invoices for the Coins Cashback Price and Coins Cashback Tax Amount on request. For the avoidance of doubt, the Coins Cashback Price and Coins Cashback Tax Amount applies in addition to the Transaction Fee and Tax Amount under the Terms of Service.</p>
                                <p>15.6 The Coins Cashback Price and Coins Cashback Tax Amount is strictly non-refundable.</p>
                            ",
                            BM: "
                                <p>15.1 Pengguna boleh menerima baucar yang melayakkan mereka mendapat Syiling Nightcat Digital Solutions (JM0919865-V) tambahan ('Baucar Pulangan Tunai Syiling Nightcat Digital Solutions (JM0919865-V)') pada pembelian yang layak di Tapak. Setelah selesai transaksi yang berjaya di mana Baucar Pulangan Tunai Syiling Nightcat Digital Solutions (JM0919865-V) telah digunakan, Syiling Nightcat Digital Solutions (JM0919865-V) tambahan akan dikreditkan ke Akaun Pengguna berdasarkan kadar penukaran seperti yang dinyatakan dalam terma dan syarat Baucar Pulangan Tunai Syiling Nightcat Digital Solutions (JM0919865-V) tersebut ('Syiling Nightcat Digital Solutions (JM0919865-V) Tambahan Kadar”) atau seperti yang ditentukan oleh Nightcat Digital Solutions (JM0919865-V) mengikut budi bicara mutlaknya. Syiling Nightcat Digital Solutions (JM0919865-V) yang dikreditkan kepada Pengguna berikutan penebusan Baucar Pulangan Tunai Syiling Nightcat Digital Solutions (JM0919865-V) hendaklah mempunyai terma dan syarat yang sama (termasuk berkaitan dengan tamat tempoh) seperti Syiling Nightcat Digital Solutions (JM0919865-V) biasa.</p>
                                <p>15.2 Nightcat Digital Solutions (JM0919865-V) boleh membenarkan Penjual menjana Baucar Pulangan Tunai Syiling Nightcat Digital Solutions (JM0919865-V) mereka sendiri (setiap satu “Baucar Pulangan Tunai Syiling Penjual”), yang Pembeli boleh memohon kepada pembelian yang layak dari kedai Penjual. Jika anda seorang Penjual yang menjana Baucar Pulangan Tunai Syiling Penjual, anda akan dianggap telah bersetuju dengan terma dan syarat yang diterangkan dalam Bahagian ini.</p>
                                <p>15.3 Apabila menjana Baucar Pulangan Tunai Syiling Penjual, Kadar Syiling Nightcat Digital Solutions (JM0919865-V) Tambahan akan ditentukan oleh Penjual mengikut budi bicara Penjual sendiri. Penjual hendaklah bertanggungjawab sepenuhnya untuk ketepatan Kadar Syiling Nightcat Digital Solutions (JM0919865-V) Tambahan.</p>
                                <p>15.4 Bagi setiap transaksi yang telah selesai di mana Pembeli berjaya menggunakan Baucar Pulangan Tunai Syiling Penjual, Penjual hendaklah membayar Nightcat Digital Solutions (JM0919865-V) nilai Syiling Nightcat Digital Solutions (JM0919865-V) tambahan yang dikreditkan kepada Pembeli (“Harga Pulangan Tunai Syiling”). Harga Pulangan Tunai Syiling dikira dalam Ringgit Malaysia  sebagai bilangan Syiling Nightcat Digital Solutions (JM0919865-V) tambahan untuk dikreditkan ke Akaun Pembeli dibahagikan dengan 100, dibundarkan kepada sen terdekat. Harga Pulangan Tunai Syiling adalah tertakluk kepada SST (“Amaun Cukai Pulangan Tunai Syiling”), dan Penjual bertanggungjawab untuk Amaun Cukai Pulangan Tunai Syiling tersebut.</p>
                                <p>15.5 Selepas kejayaan menyelesaikan transaksi, Nightcat Digital Solutions (JM0919865-V) akan menolak Harga Pulangan Tunai Syiling dan Amaun Cukai Pulangan Tunai Syiling daripada Wang Belian Pembeli, dan menyerahkan baki kepada Penjual mengikut Seksyen 12.2. Nightcat Digital Solutions (JM0919865-V) hendaklah mengeluarkan resit atau invois cukai untuk Harga Pulangan Tunai Syiling dan Amaun Cukai Pulangan Tunai Syiling atas permintaan. Untuk mengelakkan keraguan, Harga Pulangan Tunai Syiling dan Amaun Cukai Pulangan Tunai Syiling dikenakan sebagai tambahan kepada Yuran Transaksi dan Amaun Cukai di bawah Syarat Perkhidmatan.</p>
                                <p>15.6 Harga Pulangan Tunai Syiling dan Amaun Cukai Pulangan Tunai Syiling tidak boleh dikembalikan sama sekali.</p>
                            ",
                            CN: "
                                <p>15.1 用户在网站上符合条件的购买时可能会收到一张代金券，使他们有权获得额外的 Nightcat Digital Solutions (JM0919865-V) Coins（“Nightcat Digital Solutions (JM0919865-V) Coins 现金返还代金券”）。在使用了虾皮币现金返还券的成功交易完成后，额外的虾皮币将根据此类虾皮币现金返还券（“额外的虾皮币”）的条款和条件中规定的兑换率计入用户账户率”）或由 Nightcat Digital Solutions (JM0919865-V) 自行决定。在兑换 Nightcat Digital Solutions (JM0919865-V) Coins 现金返还券后记入用户的 Nightcat Digital Solutions (JM0919865-V) Coins 应具有与常规 Nightcat Digital Solutions (JM0919865-V) Coins 相同的条款和条件（包括与到期相关的条款和条件）。</p>
                                <p>15.2 Nightcat Digital Solutions (JM0919865-V) 可以允许卖家生成他们自己的 Nightcat Digital Solutions (JM0919865-V) Coins Cashback Vouchers（每个都是“Seller Coins Cashback Vouchers”），买家可以申请从卖家商店购买的合格商品。如果您是生成卖家代币现金返还券的卖家，您将被视为已同意本节所述的条款和条件。</p>
                                <p>15.3 在生成卖家币返现券时，额外的 Nightcat Digital Solutions (JM0919865-V) 币费率将由卖家自行决定。卖家应对额外 Nightcat Digital Solutions (JM0919865-V) Coins Rate 的准确性承担全部责任。</p>
                                <p>15.4 对于买家成功申请卖家币返现券的每笔已完成交易，卖家应向虾皮支付贷记给买家的额外虾皮币的价值（“金币返现价格”）。Coins 现金返还价格以马来西亚 林吉特计算，即存入买家账户的额外 Nightcat Digital Solutions (JM0919865-V) Coins 数量除以 100，四舍五入到最接近的美分。Coins Cashback 价格受 SST（“Coins Cashback Tax Amount”）的约束，卖家负责此类 Coins Cashback Tax Amount。</p>
                                <p>15.5 交易成功后，虾皮应从买家的购买款项中扣除金币返现价格和金币返现税额，并将余额按照第12.2条的规定汇给卖家。Nightcat Digital Solutions (JM0919865-V) 应根据要求为 Coins Cashback Price 和 Coins Cashback Tax Amount 开具收据或税务发票。为免生疑问，Coins Cashback Price 和 Coins Cashback Tax Amount 适用于服务条款下的交易费用和税额。</p>
                                <p>15.6 Coins Cashback Price 和Coins Cashback Tax Amount 是绝对不可退还的。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "DELIVERY",
                            BM: "PENGHANTARAN",
                            CN: "交付"
                        },
                        description: {
                            EN: "
                                <p>16.1 Nightcat Digital Solutions (JM0919865-V) will inform Seller when Nightcat Digital Solutions (JM0919865-V) receives Buyer’s Purchase Monies. Unless otherwise agreed with Nightcat Digital Solutions (JM0919865-V), Seller should then make the necessary arrangements to have the purchased item delivered to Buyer and provide details such as the name of the delivery company, the tracking number, etc. to Buyer through the Site.</p>
                                <p>16.2 Seller must use his/her best effort to ensure that Buyer receives the purchased items within, whichever applicable, the Nightcat Digital Solutions (JM0919865-V) Guarantee Period or the time period specified (for offline payment) by Seller on Seller’s listing.</p>
                                <p>16.3 Users understand that Seller bears all risk attached to the delivery of the purchased item(s) and warrants that he/she has or will obtain adequate insurance coverage for the delivery of the purchased item(s). In the event where the purchased item(s) is damaged, lost or failure of delivery during the course of delivery, Users acknowledge and agree that Nightcat Digital Solutions (JM0919865-V) will not be liable for any damage, expense, cost or fees resulted therefrom and Seller and/or Buyer will reach out to the logistic service provider to resolve such dispute.</p>
                                <p>16.4 For Cross-Border Transaction. Users understand and acknowledge that, where a product listing states that the product will ship from overseas, such product is being sold from a Seller based outside of Malaysia, and  the importation and exportation of such product is subject to local laws and regulations. Users should familiarise themselves with all import and export restrictions that apply to the designating country.  Users acknowledge that Nightcat Digital Solutions (JM0919865-V) cannot provide any legal advice in this regard and agrees that Nightcat Digital Solutions (JM0919865-V) shall not bear any risks or liabilities associated with the import and export of such products to Malaysia.</p>
                                <p>16.5 Where the Buyer elects to have a purchased item delivered by any other shipping method, the fee payable to the delivery company (“Shipping Fee”) shall be borne by the Buyer, Seller and Nightcat Digital Solutions (JM0919865-V) in such proportions as may be determined by Nightcat Digital Solutions (JM0919865-V) and published on the Site from time to time.  Nightcat Digital Solutions (JM0919865-V) shall (i) collect the Buyer’s proportion of the Shipping Fee from the Buyer, (ii) deduct the Seller’s proportion of the Shipping Fee from the Buyer’s Purchase Monies in accordance with Section 12.2, and (iii) pay the total Shipping Fee to the delivery company.</p>
                            ",
                            BM: "
                                <p>16.1 Nightcat Digital Solutions (JM0919865-V) akan memaklumkan kepada Penjual apabila Nightcat Digital Solutions (JM0919865-V) menerima Wang Belian Pembeli. Melainkan jika dipersetujui sebaliknya dengan Nightcat Digital Solutions (JM0919865-V), Penjual kemudiannya harus membuat pengaturan yang perlu untuk menghantar barang yang dibeli kepada Pembeli dan memberikan butiran seperti nama syarikat penghantaran, nombor penjejakan, dsb. kepada Pembeli melalui Tapak.</p>
                                <p>16.2 Penjual mesti menggunakan usaha terbaiknya untuk memastikan Pembeli menerima item yang dibeli dalam tempoh, yang mana berkenaan, Tempoh Jaminan Nightcat Digital Solutions (JM0919865-V) atau tempoh masa yang ditentukan (untuk pembayaran luar talian) oleh Penjual pada penyenaraian Penjual.</p>
                                <p>16.3 Pengguna memahami bahawa Penjual menanggung semua risiko yang berkaitan dengan penghantaran item yang dibeli dan waran bahawa dia mempunyai atau akan memperoleh perlindungan insurans yang mencukupi untuk penghantaran item yang dibeli. Sekiranya item yang dibeli rosak, hilang atau kegagalan penghantaran semasa penghantaran, Pengguna mengakui dan bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) tidak akan bertanggungjawab ke atas sebarang kerosakan, perbelanjaan, kos atau bayaran yang terhasil daripadanya dan Penjual dan/atau Pembeli akan menghubungi penyedia perkhidmatan logistik untuk menyelesaikan pertikaian tersebut.</p>
                                <p>16.4 Untuk Transaksi Rentas Sempadan. Pengguna memahami dan mengakui bahawa, apabila penyenaraian produk menyatakan bahawa produk tersebut akan dihantar dari luar negara, produk tersebut dijual daripada Penjual yang berpangkalan di luar Malaysia, dan pengimportan dan pengeksportan produk tersebut tertakluk kepada undang-undang dan peraturan tempatan. Pengguna harus membiasakan diri dengan semua sekatan import dan eksport yang dikenakan kepada negara yang ditetapkan. Pengguna mengakui bahawa Nightcat Digital Solutions (JM0919865-V) tidak boleh memberikan sebarang nasihat undang-undang dalam hal ini dan bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) tidak akan menanggung sebarang risiko atau liabiliti yang berkaitan dengan import dan eksport produk tersebut ke Malaysia.</p>
                                <p>16.5 Jika Pembeli memilih untuk menghantar barang yang dibeli melalui mana-mana kaedah penghantaran lain, bayaran yang perlu dibayar kepada syarikat penghantaran (“Yuran Penghantaran”) hendaklah ditanggung oleh Pembeli, Penjual dan Nightcat Digital Solutions (JM0919865-V) dalam perkadaran yang ditentukan oleh Nightcat Digital Solutions (JM0919865-V) dan diterbitkan di Laman dari semasa ke semasa. Nightcat Digital Solutions (JM0919865-V) hendaklah (i) mengutip bahagian Yuran Penghantaran Pembeli daripada Pembeli, (ii) menolak bahagian Yuran Penghantaran Penjual daripada Wang Belian Pembeli mengikut Seksyen 12.2, dan (iii) membayar jumlah Yuran Penghantaran kepada syarikat penghantaran.</p>
                            ",
                            CN: "
                                <p>16.1 当虾皮收到买家的购买款项时，虾皮会通知卖家。除非与 Nightcat Digital Solutions (JM0919865-V) 另有约定，卖方应做出必要安排，将购买的物品交付给买方，并通过网站向买方提供诸如送货公司名称、跟踪编号等详细信息。</p>
                                <p>16.2 卖家必须尽最大努力确保买家在虾皮保证期或卖家在卖家列表中指定的时间段内（以适用者为准）收到所购买的物品（对于线下付款）。</p>
                                <p>16.3 用户理解卖方承担交付所购物品的所有风险，并保证他/她已经或将获得足够的保险来交付所购买的物品。如果购买的物品在交付过程中损坏、丢失或无法交付，用户承认并同意 Nightcat Digital Solutions (JM0919865-V) 将不对由此造成的任何损坏、费用、成本或费用负责，卖家和/或买方将与物流服务提供商联系以解决此类争议。</p>
                                <p>16.4 跨境交易。用户理解并承认，如果产品列表中注明该产品将从海外发货，则该产品是从位于马来西亚境外的卖家处销售的，该产品的进出口受当地法律法规的约束。用户应熟悉适用于指定国家的所有进出口限制。用户承认虾皮无法就此提供任何法律建议，并同意虾皮不承担与此类产品进出口马来西亚相关的任何风险或责任。</p>
                                <p>16.5 如果买家选择通过任何其他运输方式交付购买的物品，应付给送货公司的费用（“运费”）应由买家、卖家和虾皮按照虾皮和虾皮确定的比例承担。不时在网站上发布。Nightcat Digital Solutions (JM0919865-V) 应 (i) 向买家收取买家的运费比例，(ii) 根据第 12.2 条从买家的购买款项中扣除卖家的运费比例，以及 (iii) 将总运费支付给买家送货公司。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "CANCELLATION, RETURN AND REFUND",
                            BM: "PEMBATALAN, PEMULANGAN DAN PEMBAYARAN BALIK",
                            CN: "取消、退货和退款"
                        },
                        description: {
                            EN: "
                                <p>17.1 Buyer may only cancel his/her order prior to the payment of Buyer’s Purchase Monies into Nightcat Digital Solutions (JM0919865-V) Guarantee Account.</p>
                                <p>17.2 Buyer may apply for the return of the purchased item and refund prior to the expiry of Nightcat Digital Solutions (JM0919865-V) Guarantee Period, if applicable, subject to and in accordance with Nightcat Digital Solutions (JM0919865-V)’s Refunds and Return Policy. Please refer to Nightcat Digital Solutions (JM0919865-V)’s Refunds and Return Policy for further information.</p>
                                <p>17.3 Nightcat Digital Solutions (JM0919865-V) reserves the right to cancel any transaction on the Site and Buyer agrees that Buyer’s sole remedy will be to receive a refund of the Buyer’s Purchase Monies paid into Nightcat Digital Solutions (JM0919865-V) Guarantee Account.</p>
                                <p>17.4 If you have redeemed Nightcat Digital Solutions (JM0919865-V) Coins for your transaction and you are successful in obtaining a refund based on Nightcat Digital Solutions (JM0919865-V)’s Refunds and Return Policy, Nightcat Digital Solutions (JM0919865-V) shall refund the monies you have actually paid for the item and credit back any redeemed Nightcat Digital Solutions (JM0919865-V) Coins to your Account separately.</p>
                                <p>17.5 Nightcat Digital Solutions (JM0919865-V) does not monitor the cancellation, return and refund process for offline payment.</p>
                                <p>17.6 Refunds to Buyers shall be made to their Nightcat Digital Solutions (JM0919865-V)Pay wallet within one (1) day of the return or refund request being approved.</p>
                            ",
                            BM: "
                                <p>17.1 Pembeli hanya boleh membatalkan pesanannya sebelum pembayaran Wang Belian Pembeli ke dalam Akaun Jaminan Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>17.2 Pembeli boleh memohon pemulangan item yang dibeli dan bayaran balik sebelum tamat Tempoh Jaminan Nightcat Digital Solutions (JM0919865-V), jika berkenaan, tertakluk kepada dan menurut Polisi Bayaran Balik dan Pemulangan Nightcat Digital Solutions (JM0919865-V). Sila rujuk Polisi Bayaran Balik dan Pemulangan Nightcat Digital Solutions (JM0919865-V)   untuk maklumat lanjut.</p>
                                <p>17.3 Nightcat Digital Solutions (JM0919865-V) berhak untuk membatalkan sebarang urus niaga di Tapak dan Pembeli bersetuju bahawa satu-satunya remedi Pembeli adalah menerima bayaran balik Wang Belian Pembeli yang telah dibayar ke dalam Akaun Jaminan Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>17.4 Jika anda telah menebus Syiling Nightcat Digital Solutions (JM0919865-V) untuk transaksi anda dan anda berjaya mendapatkan bayaran balik berdasarkan Polisi Bayaran Balik dan Pemulangan Nightcat Digital Solutions (JM0919865-V), Nightcat Digital Solutions (JM0919865-V) akan membayar balik wang yang sebenarnya anda telah bayar untuk item tersebut dan mengkreditkan semula mana-mana Syiling Nightcat Digital Solutions (JM0919865-V) yang ditebus ke Akaun anda secara berasingan.</p>
                                <p>17.5 Nightcat Digital Solutions (JM0919865-V) tidak memantau proses pembatalan, pemulangan dan bayaran balik untuk pembayaran luar talian.</p>
                                <p>17.6 Bayaran balik kepada Pembeli hendaklah dibuat ke dompet Nightcat Digital Solutions (JM0919865-V)Pay mereka dalam masa satu (1) hari selepas permintaan pemulangan atau bayaran balik diluluskan.</p>
                            ",
                            CN: "
                                <p>17.1 买家只能在买家的购买款项支付到虾皮保证账户之前取消他/她的订单。</p>
                                <p>17.2 买家可以在虾皮保证期到期前申请退货和退款（如适用），但须遵守并遵守虾皮的退款和退货政策。请参阅 Nightcat Digital Solutions (JM0919865-V) 的 退款和退货政策 了解更多信息。</p>
                                <p>17.3 Nightcat Digital Solutions (JM0919865-V) 保留取消网站上任何交易的权利，并且买方同意买方的唯一补救措施是收到支付到 Nightcat Digital Solutions (JM0919865-V) 担保账户的买方购买款项的退款。</p>
                                <p>17.4 如果您已经为您的交易兑换了虾皮币，并且您根据虾皮的退款和退货政策成功获得退款，虾皮将退还您实际支付的款项，并将任何兑换的虾皮币单独记入您的账户。</p>
                                <p>17.5 Nightcat Digital Solutions (JM0919865-V)不监控线下支付的取消、退货和退款流程。</p>
                                <p>17.6 应在退货或退款请求获得批准后的一 (1) 天内向买家退款到他们的 Nightcat Digital Solutions (JM0919865-V)Pay 钱包。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "SELLER’S RESPONSIBILITIES",
                            BM: "TANGGUNGJAWAB PENJUAL",
                            CN: "卖方的责任"
                        },
                        description: {
                            EN: "
                                <p>18.1 Seller shall properly manage and ensure that relevant information such as the price and the details of items, inventory amount and terms and conditions for sales is updated on Seller’s listing and shall not post inaccurate or misleading information.</p>
                                <p>18.2 The price of items for sale will be determined by the Seller at his/her own discretion. The price of an item and shipping charges shall include the entire amount to be charged to Buyer such as sales tax, value-added tax, tariffs, etc. and Seller shall not charge Buyer such amount additionally and separately.</p>
                                <p>18.3 Seller agrees that Nightcat Digital Solutions (JM0919865-V) may at its discretion engage in promotional activities to induce transactions between Buyer and Seller by reducing, discounting or refunding fees, or in other ways. The final price that Buyer will pay actually will be the price that such adjustment is applied to.</p>
                                <p>18.4 For the purpose of promoting the sales of the items listed by Seller, Nightcat Digital Solutions (JM0919865-V) may post such items (at adjusted price) on third-party websites (such as portal sites and price comparison sites) and other websites (domestic or foreign) operated by Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>18.5 Seller shall issue receipts, credit card slips or tax invoices to Buyer on request.</p>
                                <p>18.6 Seller acknowledges and agrees that Seller will be responsible for paying all taxes, customs and duties for the item sold and Nightcat Digital Solutions (JM0919865-V) cannot provide any legal or tax advice in this regard. As tax laws and regulations may change from time to time, Sellers are advised to seek professional advice if in doubt.     </p>
                                <p>18.7 Seller acknowledge and agrees that Seller’s violation of any of Nightcat Digital Solutions (JM0919865-V)’s polices will result in a range of actions as stated in Section 7.1.</p>
                            ",
                            BM: "
                                <p>18.1 Penjual hendaklah mengurus dan memastikan maklumat yang relevan seperti harga dan butiran item, jumlah inventori dan terma dan syarat untuk jualan dikemas kini pada penyenaraian Penjual dan tidak akan menyiarkan maklumat yang tidak tepat atau mengelirukan.</p>
                                <p>18.2 Harga barangan untuk jualan akan ditentukan oleh Penjual mengikut budi bicaranya sendiri. Harga item dan caj penghantaran hendaklah termasuk keseluruhan jumlah yang akan dicaj kepada Pembeli seperti cukai jualan, cukai nilai tambah, tarif, dsb. dan Penjual tidak akan mengenakan amaun tersebut kepada Pembeli secara tambahan dan berasingan.</p>
                                <p>18.3 Penjual bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) boleh mengikut budi bicaranya terlibat dalam aktiviti promosi untuk mendorong transaksi antara Pembeli dan Penjual dengan mengurangkan, mendiskaun atau membayar balik yuran, atau dengan cara lain. Harga akhir yang Pembeli akan bayar sebenarnya ialah harga yang digunakan untuk pelarasan sedemikian.</p>
                                <p>18.4 Bagi tujuan mempromosikan jualan item yang disenaraikan oleh Penjual, Nightcat Digital Solutions (JM0919865-V) boleh menyiarkan item tersebut (pada harga larasan) di laman web pihak ketiga (seperti laman portal dan tapak perbandingan harga) dan laman web lain (dalam atau luar negara) yang dikendalikan oleh Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>18.5 Penjual hendaklah mengeluarkan resit, slip kad kredit atau invois cukai kepada Pembeli atas permintaan.</p>
                                <p>18.6 Penjual mengakui dan bersetuju bahawa Penjual akan bertanggungjawab untuk membayar semua cukai, kastam dan duti untuk item yang dijual dan Nightcat Digital Solutions (JM0919865-V) tidak boleh memberikan sebarang nasihat undang-undang atau cukai dalam hal ini. Memandangkan undang-undang dan peraturan cukai mungkin berubah dari semasa ke semasa, Penjual dinasihatkan untuk mendapatkan nasihat profesional jika ragu-ragu.     </p>
                                <p>18.7 Penjual mengakui dan bersetuju bahawa pelanggaran Penjual terhadap mana-mana polisi Nightcat Digital Solutions (JM0919865-V) akan mengakibatkan pelbagai tindakan seperti yang dinyatakan dalam Seksyen 7.1.</p>
                            ",
                            CN: "
                                <p>18.1 卖家应妥善管理并确保卖家listing上的价格及商品明细、库存数量、销售条款及条件等相关信息及时更新，不得发布不准确或误导性信息。</p>
                                <p>18.2 出售物品的价格将由卖方自行决定。物品的价格和运费应包括向买方收取的全部金额，如销售税、增值税、关税等，卖方不得额外和单独向买方收取该金额。</p>
                                <p>18.3 卖家同意，虾皮可自行决定通过降低、折扣或退还费用等方式进行促销活动，以促成买卖双方之间的交易。买方实际支付的最终价格将是适用此类调整的价格。</p>
                                <p>18.4 为促进卖家所列商品的销售，虾皮可能会在第三方网站（如门户网站和比价网站）和其他由虾皮运营的网站（国内或国外）上发布此类物品（调整后的价格）。虾皮。</p>
                                <p>18.5 卖方应根据买方的要求向买方开具收据、信用卡收据或税务发票。</p>
                                <p>18.6 卖家承认并同意，卖家将负责支付所售商品的所有税款、关税和关税，Nightcat Digital Solutions (JM0919865-V) 无法在这方面提供任何法律或税务建议。由于税收法律法规可能会不时发生变化，如有疑问，建议卖家寻求专业意见。     </p>
                                <p>18.7 卖家承认并同意卖家违反任何虾皮政策将导致如第 7.1 条所述的一系列行为。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "PAID ADVERTISING",
                            BM: "IKLAN BERBAYAR",
                            CN: "付费广告"
                        },
                        description: {
                            EN: "
                                <p>19.1 Nightcat Digital Solutions (JM0919865-V) will be launching keyword advertising and/or other advertising services (hereinafter referred to as 'Paid Advertising') on its Paid Advertising Site on an ongoing basis. Sellers may purchase the Paid Advertising services. Nightcat Digital Solutions (JM0919865-V) provides the Paid Advertising services in accordance with these Terms of Service and any explanatory materials published on this Site, the Paid Advertising Site or otherwise communicated to Sellers in writing (hereinafter referred to as the 'Paid Advertising Rules'). Sellers who purchase Paid Advertising services agree to be bound by the Paid Advertising Rules. If you are not agreeable to being bound by the Paid Advertising Rules, do not buy any Paid Advertising Services.</p>
                                <p>19.2 In order to purchase Paid Advertising services, you must be an eligible Seller under the Paid Advertising Rules. At the time when you purchase and pay for the Paid Advertising Services, your Account must not be suspended.</p>
                                <p>19.3 You may purchase Paid Advertising services by purchasing advertising credits on the Paid Advertising Site (“Advertising Credits”), and fees payable for the Paid Advertising services will be deducted from the Advertising Credits on a pay-per-click basis, as determined by Nightcat Digital Solutions (JM0919865-V). All Advertising Credits will be subject to goods and services tax. Except as otherwise provided in the applicable Paid Advertising Rules, you may not cancel the order and/or request for a refund after you have purchased Advertising Credits and completed the payment process. Nightcat Digital Solutions (JM0919865-V) will provide an electronic invoice for Paid Advertising services purchased on a monthly basis and Sellers are to ensure that a correct and working e-mail address is provided for receiving such invoices. The invoice will contain the name and address provided by you, the amount of Advertising Credits purchased and the remaining balance of your Advertising Credits as at the date of the invoice.</p>
                                <p>19.4 You have the option to purchase the Paid Advertising service at the time you list an item for sale or subsequently. When you purchase the Paid Advertising service, you may 1) manage the Paid Advertising service yourself or 2) authorize Nightcat Digital Solutions (JM0919865-V) to manage the Paid Advertising service for you. In both cases, you may set different budgets, keywords, marketing periods, etc. for each item in accordance with the Paid Advertising Rules. You may also choose to have your Advertising Credits automatically topped up via your Nightcat Digital Solutions (JM0919865-V) Wallet (“Advertising Credits Top Up Feature”) if your Advertising Credits balance falls below an amount set by you (“Advertising Credits Minimum Amount”).  When activating the Advertising Credits Top Up Feature, you may choose the Advertising Credits Minimum Amount and the amount of top up, and you consent to the debit of your Nightcat Digital Solutions (JM0919865-V) Wallet in accordance with Section 10 of these Terms of Service.   The Paid Advertising service for each item will be activated and will expire on the respective dates set by you or Nightcat Digital Solutions (JM0919865-V) (the “Paid Advertising Period”). You will not be entitled to transfer the remaining Paid Advertising Period or Advertising Credits to other items if an item is sold or unlisted during the Paid Advertising Period you or Nightcat Digital Solutions (JM0919865-V) set (based on your instructions) for that item. The Advertising Credits will also not be refunded.</p>
                                <p>19.5 Where you have authorized Nightcat Digital Solutions (JM0919865-V) to manage the Paid Advertising service for you, you understand and agree to indemnify, defend and hold harmless Nightcat Digital Solutions (JM0919865-V) from and against any and all losses which may be sustained, instituted, made or alleged against or suffered or incurred by Nightcat Digital Solutions (JM0919865-V) and which arises (whether directly or indirectly) out of, in the course of or in connection with Nightcat Digital Solutions (JM0919865-V) accessing your Seller’s account and/or executing your instructions, for the purpose of managing the Paid Advertising service on your behalf.</p>
                                <p>19.6 The goods you list on the Site must comply with all relevant laws and regulations, the Paid Advertising Rules, these Terms of Service and the Prohibited and Restricted Items Policy. You understand and agree that Nightcat Digital Solutions (JM0919865-V) has the right to immediately remove any listing which violates any of the foregoing and any Paid Advertising fees that you have paid or Advertising Credits you have used in relation to any listing removed pursuant to this Section 19.6 will not be refunded. Nightcat Digital Solutions (JM0919865-V) will also not be liable to compensate you for any loss whatsoever in relation to listings removed pursuant to this Section 19.6.</p>
                                <p>19.7 You understand and agree that Nightcat Digital Solutions (JM0919865-V) does not warrant or guarantee any increase in viewership or sales of your items as a result of the Paid Advertising services.</p>
                                <p>19.8 You are advised to only purchase Paid Advertising services after fully considering your budget and intended advertising objectives. Except as otherwise provided in these Terms of Service or the Paid Advertising Rules, Nightcat Digital Solutions (JM0919865-V) shall not be liable for any compensation or be subject to any liability (including but not limited to actual expenses and lost profits) for the results or intended results of any Paid Advertising service.</p>
                                <p>19.9 IF, NOTWITHSTANDING ANYTHING IN THESE TERMS OF SERVICE, Nightcat Digital Solutions (JM0919865-V) IS FOUND BY A COURT OF COMPETENT JURISDICTION TO BE LIABLE (INCLUDING FOR GROSS NEGLIGENCE) IN RELATION TO ANY PAID ADVERTISING SERVICE, THEN, TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ITS LIABILITY TO YOU OR TO ANY THIRD PARTY IS LIMITED TO THE AMOUNT PAID BY YOU FOR THE PAID ADVERTISING SERVICE IN QUESTION ONLY.</p>
                            ",
                            BM: "
                                <p>19.1 Nightcat Digital Solutions (JM0919865-V) akan melancarkan pengiklanan kata kunci dan/atau perkhidmatan pengiklanan lain (selepas ini dirujuk sebagai 'Pengiklanan Berbayar') di  Tapak Pengiklanan Berbayarnya  secara berterusan. Penjual boleh membeli perkhidmatan Pengiklanan Berbayar. Nightcat Digital Solutions (JM0919865-V) menyediakan perkhidmatan Pengiklanan Berbayar menurut Syarat Perkhidmatan ini dan sebarang bahan penjelasan yang diterbitkan di Tapak ini, Tapak Pengiklanan Berbayar atau sebaliknya disampaikan kepada Penjual secara bertulis (selepas ini dirujuk sebagai 'Peraturan Pengiklanan Berbayar'). Penjual yang membeli perkhidmatan Pengiklanan Berbayar bersetuju untuk terikat dengan Peraturan Pengiklanan Berbayar. Jika anda tidak bersetuju untuk terikat dengan Peraturan Pengiklanan Berbayar, jangan beli sebarang Perkhidmatan Pengiklanan Berbayar.</p>
                                <p>19.2 Untuk membeli perkhidmatan Pengiklanan Berbayar, anda mesti menjadi Penjual yang layak di bawah Peraturan Pengiklanan Berbayar. Pada masa anda membeli dan membayar Perkhidmatan Pengiklanan Berbayar, Akaun anda tidak boleh digantung.</p>
                                <p>19.3 Anda boleh membeli perkhidmatan Pengiklanan Berbayar dengan membeli kredit pengiklanan di Tapak Pengiklanan Berbayar (“Kredit Pengiklanan”), dan yuran yang perlu dibayar untuk perkhidmatan Pengiklanan Berbayar akan ditolak daripada Kredit Pengiklanan pada asas bayar setiap klik, seperti yang ditentukan oleh Nightcat Digital Solutions (JM0919865-V). Semua Kredit Pengiklanan akan tertakluk kepada cukai barangan dan perkhidmatan. Kecuali diperuntukkan sebaliknya dalam Peraturan Pengiklanan Berbayar yang berkenaan, anda tidak boleh membatalkan pesanan dan/atau meminta bayaran balik selepas anda membeli Kredit Pengiklanan dan menyelesaikan proses pembayaran. Nightcat Digital Solutions (JM0919865-V) akan menyediakan invois elektronik untuk perkhidmatan Pengiklanan Berbayar yang dibeli setiap bulan dan Penjual perlu memastikan alamat e-mel yang betul dan berfungsi disediakan untuk menerima invois tersebut. Invois akan mengandungi nama dan alamat yang anda berikan,</p>
                                <p>19.4 Anda mempunyai pilihan untuk membeli perkhidmatan Pengiklanan Berbayar pada masa anda menyenaraikan item untuk dijual atau seterusnya. Apabila anda membeli perkhidmatan Pengiklanan Berbayar, anda boleh 1) mengurus sendiri perkhidmatan Pengiklanan Berbayar atau 2) membenarkan Nightcat Digital Solutions (JM0919865-V) untuk mengurus perkhidmatan Pengiklanan Berbayar untuk anda. Dalam kedua-dua kes, anda boleh menetapkan belanjawan, kata kunci, tempoh pemasaran, dsb. yang berbeza untuk setiap item mengikut Peraturan Pengiklanan Berbayar. Anda juga boleh memilih untuk menambah Kredit Pengiklanan anda secara automatik melalui Dompet Nightcat Digital Solutions (JM0919865-V) anda (“Ciri Tambah Nilai Kredit Pengiklanan”) jika baki Kredit Pengiklanan anda jatuh di bawah amaun yang anda tetapkan (“Jumlah Minimum Kredit Pengiklanan”). Apabila mengaktifkan Ciri Tambah Nilai Kredit Pengiklanan, anda boleh memilih Jumlah Minimum Kredit Pengiklanan dan jumlah tambah nilai, dan anda bersetuju dengan debit Nightcat Digital Solutions (JM0919865-V) Wallet anda mengikut Seksyen 10 Syarat Perkhidmatan ini. Perkhidmatan Pengiklanan Berbayar untuk setiap item akan diaktifkan dan akan tamat pada tarikh masing-masing yang ditetapkan oleh anda atau Nightcat Digital Solutions (JM0919865-V) ('Tempoh Pengiklanan Berbayar'). Anda tidak akan berhak untuk memindahkan baki Tempoh Pengiklanan Berbayar atau Kredit Pengiklanan ke item lain jika item dijual atau tidak tersenarai semasa Tempoh Pengiklanan Berbayar yang anda atau Nightcat Digital Solutions (JM0919865-V) tetapkan (berdasarkan arahan anda) untuk item tersebut. Kredit Pengiklanan juga tidak akan dikembalikan. Anda tidak akan berhak untuk memindahkan baki Tempoh Pengiklanan Berbayar atau Kredit Pengiklanan ke item lain jika item dijual atau tidak tersenarai semasa Tempoh Pengiklanan Berbayar yang anda atau Nightcat Digital Solutions (JM0919865-V) tetapkan (berdasarkan arahan anda) untuk item tersebut. Kredit Pengiklanan juga tidak akan dikembalikan. Anda tidak akan berhak untuk memindahkan baki Tempoh Pengiklanan Berbayar atau Kredit Pengiklanan ke item lain jika item dijual atau tidak tersenarai semasa Tempoh Pengiklanan Berbayar yang anda atau Nightcat Digital Solutions (JM0919865-V) tetapkan (berdasarkan arahan anda) untuk item tersebut. Kredit Pengiklanan juga tidak akan dikembalikan.</p>
                                <p>19.5 Jika anda telah membenarkan Nightcat Digital Solutions (JM0919865-V) menguruskan perkhidmatan Pengiklanan Berbayar untuk anda, anda memahami dan bersetuju untuk menanggung rugi, mempertahankan dan tidak memudaratkan Nightcat Digital Solutions (JM0919865-V) daripada dan terhadap mana-mana dan semua kerugian yang mungkin dialami, dimulakan, dibuat atau didakwa terhadap atau dialami atau ditanggung oleh Nightcat Digital Solutions (JM0919865-V) dan yang timbul (sama ada secara langsung atau tidak langsung) daripada, semasa atau berkaitan dengan Nightcat Digital Solutions (JM0919865-V) mengakses akaun Penjual anda dan/atau melaksanakan arahan anda, untuk tujuan mengurus perkhidmatan Pengiklanan Berbayar bagi pihak anda.</p>
                                <p>19.6 Barangan yang anda senaraikan di Tapak mesti mematuhi semua undang-undang dan peraturan yang berkaitan, Peraturan Pengiklanan Berbayar, Syarat Perkhidmatan ini dan Polisi Perkara Larangan dan Terhad. Anda memahami dan bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) berhak untuk segera mengalih keluar mana-mana penyenaraian yang melanggar mana-mana yang dinyatakan di atas dan sebarang bayaran Pengiklanan Berbayar yang telah anda bayar atau Kredit Pengiklanan yang telah anda gunakan berhubung dengan mana-mana penyenaraian yang dialih keluar menurut Seksyen 19.6 ini tidak akan dikembalikan. . Nightcat Digital Solutions (JM0919865-V) juga tidak akan bertanggungjawab untuk membayar pampasan kepada anda untuk sebarang kerugian yang berkaitan dengan penyenaraian yang dialih keluar menurut Seksyen 19.6 ini.</p>
                                <p>19.7 Anda memahami dan bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) tidak menjamin atau menjamin sebarang peningkatan dalam tontonan atau jualan barangan anda hasil daripada perkhidmatan Pengiklanan Berbayar.</p>
                                <p>19.8 Anda dinasihatkan untuk hanya membeli perkhidmatan Pengiklanan Berbayar selepas mempertimbangkan sepenuhnya bajet anda dan objektif pengiklanan yang dimaksudkan. Kecuali sebagaimana yang diperuntukkan sebaliknya dalam Syarat Perkhidmatan ini atau Peraturan Pengiklanan Berbayar, Nightcat Digital Solutions (JM0919865-V) tidak akan bertanggungjawab ke atas sebarang pampasan atau tertakluk kepada sebarang liabiliti (termasuk tetapi tidak terhad kepada perbelanjaan sebenar dan kehilangan keuntungan) untuk keputusan atau keputusan yang diharapkan dari mana-mana Dibayar. Perkhidmatan pengiklanan.</p>
                                <p>19.9 JIKA, WALAUPUN APA-APA DALAM SYARAT PERKHIDMATAN INI, Nightcat Digital Solutions (JM0919865-V) DIDAPATI OLEH MAHKAMAH BIDANG KUASA YANG KOMPETEN UNTUK BERTANGGUNGJAWAB (TERMASUK ATAS KECUAIAN KASAR) BERHUBUNGAN DENGAN MANA-MANA PERKHIDMATAN IKLAN BERBAYAR, KEMUDIAN, SEHINGGA YANG TIDAK BOLEH DIBENARKAN. KEPADA ANDA ATAU KEPADA MANA-MANA PIHAK KETIGA ADALAH TERHAD KEPADA JUMLAH YANG DIBAYAR OLEH ANDA UNTUK PERKHIDMATAN IKLAN BERBAYAR YANG DIPERSOALKAN SAHAJA.</p>
                            ",
                            CN: "
                                <p>19.1 虾皮将在其付费广告网站 上持续推出关键词广告和/或其他广告服务（以下简称“付费广告”）  。卖家可以购买付费广告服务。虾皮根据本服务条款以及在本网站、付费广告网站上发布的或以其他方式以书面形式向卖家传达的任何说明材料（以下简称“付费广告规则”）提供付费广告服务。购买付费广告服务的卖家同意受付费广告规则的约束。如果您不同意受付费广告规则的约束，请不要购买任何付费广告服务。</p>
                                <p>19.2 为了购买付费广告服务，您必须是付费广告规则下的合格卖家。在您购买和支付付费广告服务时，您的帐户不得被暂停。</p>
                                <p>19.3 您可以通过在付费广告网站上购买广告积分（“广告积分”）来购买付费广告服务，付费广告服务的应付费用将从广告积分中按点击次数扣除，具体取决于虾皮。所有广告积分均需缴纳商品和服务税。除非适用的付费广告规则另有规定，否则您在购买广告积分并完成付款流程后不得取消订单和/或要求退款。Nightcat Digital Solutions (JM0919865-V) 将为每月购买的付费广告服务提供电子发票，卖家应确保提供正确且有效的电子邮件地址以接收此类发票。发票将包含您提供的姓名和地址，</p>
                                <p>19.4 您可以选择在列出待售商品时或之后购买付费广告服务。当您购买付费广告服务时，您可以1）自行管理付费广告服务或2）授权虾皮为您管理付费广告服务。在这两种情况下，您都可以根据付费广告规则为每个项目设置不同的预算、关键字、营销周期等。如果您的广告积分余额低于您设置的金额（“广告积分最低金额”），您也可以选择通过您的 Nightcat Digital Solutions (JM0919865-V) 钱包自动充值您的广告积分（“广告积分充值功能”）。激活广告积分充值功能时，您可以选择广告积分最低金额和充值金额，并且您同意根据本服务条款第 10 条从您的 Nightcat Digital Solutions (JM0919865-V) 钱包中扣款。每件商品的付费广告服务将被激活，并将在您或 Nightcat Digital Solutions (JM0919865-V) 设定的相应日期（“付费广告期”）到期。如果在您或 Nightcat Digital Solutions (JM0919865-V) 为该商品设置的付费广告期（根据您的指示）期间出售或未列出商品，您将无权将剩余的付费广告期或广告积分转移到其他商品。广告积分也不会退还。如果在您或 Nightcat Digital Solutions (JM0919865-V) 为该商品设置的付费广告期（根据您的指示）期间出售或未列出商品，您将无权将剩余的付费广告期或广告积分转移到其他商品。广告积分也不会退还。如果在您或 Nightcat Digital Solutions (JM0919865-V) 为该商品设置的付费广告期（根据您的指示）期间出售或未列出商品，您将无权将剩余的付费广告期或广告积分转移到其他商品。广告积分也不会退还。</p>
                                <p>19.5 如果您已授权虾皮为您管理付费广告服务，您理解并同意赔偿、捍卫虾皮并使虾皮免受可能遭受、提起、造成或指控或遭受或招致的任何和所有损失。 Nightcat Digital Solutions (JM0919865-V) 以及出于代表您管理付费广告服务的目的，在 Nightcat Digital Solutions (JM0919865-V) 访问您的卖家帐户和/或执行您的指示的过程中或与之相关的（直接或间接）产生的。</p>
                                <p>19.6 您在本网站上架的商品必须符合所有相关法律法规、付费广告规则、本服务条款和禁止和限制物品政策。您理解并同意，Nightcat Digital Solutions (JM0919865-V) 有权立即删除任何违反上述任何内容的列表，并且您已支付的任何付费广告费用或您根据第 19.6 条删除的任何列表所使用的广告积分将不予退还. 对于根据本第 19.6 条删除的商品所造成的任何损失，Nightcat Digital Solutions (JM0919865-V) 也不承担任何赔偿责任。</p>
                                <p>19.7 您理解并同意，虾皮不保证或保证您的商品的收视率或销售额因付费广告服务而增加。</p>
                                <p>19.8 建议您在充分考虑您的预算和预期广告目标后才购买付费广告服务。除本服务条款或付费广告规则另有规定外，虾皮不对任何付费广告的结果或预期结果承担任何赔偿或承担任何责任（包括但不限于实际费用和利润损失）。广告服务。</p>
                                <p>19.9 如果尽管这些服务条款中有任何规定，但有管辖权的法院认定 Nightcat Digital Solutions (JM0919865-V) 应对任何付费广告服务承担责任（包括重大过失），则在最大允许的范围内对于您或任何第三方，仅限于您为付费广告服务支付的金额。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "PURCHASE AND SALE OF ALCOHOL",
                            BM: "PEMBELIAN DAN PENJUALAN ARAK",
                            CN: "酒精的购买和销售"
                        },
                        description: {
                            EN: "
                                <p>20.1 The purchase and sale of alcoholic products (“Alcohol”) on the Site is permitted by Nightcat Digital Solutions (JM0919865-V) subject to the terms and conditions of this Section 20. If you are a buyer of Alcohol (“Alcohol Buyer”), you will be deemed to have consented to the terms and conditions in this Section 20 when you purchase Alcohol on the Site. Similarly, if you are an approved seller of Alcohol (“Alcohol Seller”), you will be deemed to have consented to the terms and conditions in this Section 20 when you sell Alcohol on the Site.</p>
                                <p>20.2 If you are an Alcohol Buyer: </p>
                                <ol type='i'>
                                    <li>you represent and warrant that you and (if applicable) the person receiving the Alcohol (“Recipient”) are (a) aged 21 or above; (b) are not Muslim or otherwise prohibited from buying Alcohol under any law, regulation or religion; and (c) understand the following: “MEMINUM ARAK BOLEH MEMBAHAYAKAN KESIHATAN”; and</li>
                                    <li>if requested by an Alcohol Seller or Nightcat Digital Solutions (JM0919865-V) (or its agents), you and/or the Recipient shall provide photo identification for age verification purposes.</li>
                                </ol>
                                <p>20.3 If you are an Alcohol Seller, you represent and warrant that:</p>
                                <ol type='i'>
                                    <li>you are not Muslim or otherwise prohibited from selling Alcohol under any law, regulation or religion;</li>
                                    <li>you hold all necessary licences and/or permits to sell Alcohol through the Site, and shall provide a copy of such licences and/or permits and supporting documents to Nightcat Digital Solutions (JM0919865-V) immediately upon request for verification purposes; and</li>
                                    <li>all information and documents provided to Nightcat Digital Solutions (JM0919865-V) are true and accurate.</li>
                                </ol>
                                <p>20.4 When delivering Alcohol to an Alcohol Buyer:</p>
                                <ol type='i'>
                                    <li>the delivery agent reserves the right to request for valid photo identification for age verification purposes; and</li>
                                    <li>(Nightcat Digital Solutions (JM0919865-V) (via the delivery agent) reserves the right to refuse the delivery of Alcohol if the Alcohol Buyer and/or the Recipient appears intoxicated or is unable to provide valid photo identification for age verification purposes.</li>
                                </ol>
                                <p>20.5 Each Alcohol Buyer and Alcohol Seller severally agrees to indemnify, defend and hold harmless Nightcat Digital Solutions (JM0919865-V), and its shareholders, subsidiaries, affiliates, directors, officers, agents, co-branders or other partners, and employees (collectively, the 'Indemnified Parties') from and against any and all claims, actions, proceedings, and suits and all related liabilities, damages, settlements, penalties, fines, costs and expenses (including, without limitation, any other dispute resolution expenses) incurred by any Indemnified Party arising out of or relating to: (a) any inaccuracy or breach of its representations in Section 20.2 and/or Section 20.3 (as applicable); and (b) its breach of any law or any rights of a third party.</p>
                            ",
                            BM: "
                                <p>20.1 Pembelian dan penjualan produk beralkohol (“Alkohol”) di Laman ini dibenarkan oleh Nightcat Digital Solutions (JM0919865-V) tertakluk kepada terma dan syarat Seksyen 20 ini. Jika anda seorang pembeli Alkohol (“Pembeli Alkohol”), anda akan dianggap sebagai telah bersetuju dengan terma dan syarat dalam Seksyen 20 ini apabila anda membeli Alkohol di Tapak. Begitu juga, jika anda seorang penjual Alkohol yang diluluskan ('Penjual Alkohol'), anda akan dianggap telah bersetuju dengan terma dan syarat dalam Seksyen 20 ini apabila anda menjual Alkohol di Tapak.</p>
                                <p>20.2 Jika anda seorang Pembeli Alkohol:</p>
                                <ol type='i'>
                                    <li>anda mewakili dan menjamin bahawa anda dan (jika berkenaan) orang yang menerima Alkohol (“Penerima”) adalah (a) berumur 21 tahun ke atas; (b) bukan beragama Islam atau selainnya dilarang daripada membeli Alkohol di bawah mana-mana undang-undang, peraturan atau agama; dan (c) memahami perkara berikut: “MEMINUM ARAK BOLEH MEMBAHAYAKAN KESIHATAN”; dan</li>
                                    <li>jika diminta oleh Penjual Alkohol atau Nightcat Digital Solutions (JM0919865-V) (atau ejennya), anda dan/atau Penerima hendaklah memberikan pengenalan bergambar untuk tujuan pengesahan umur.</li>
                                </ol>
                                <p>20.3 Jika anda seorang Penjual Alkohol, anda menyatakan dan menjamin bahawa:</p>
                                <ol type='i'>
                                    <li>anda bukan Islam atau sebaliknya dilarang daripada menjual Alkohol di bawah mana-mana undang-undang, peraturan atau agama;</li>
                                    <li>(anda memegang semua lesen dan/atau permit yang diperlukan untuk menjual Alkohol melalui Tapak, dan hendaklah memberikan salinan lesen dan/atau permit dan dokumen sokongan tersebut kepada Nightcat Digital Solutions (JM0919865-V) serta-merta atas permintaan untuk tujuan pengesahan; dan</li>
                                    <li>semua maklumat dan dokumen yang diberikan kepada Nightcat Digital Solutions (JM0919865-V) adalah benar dan tepat.</li>
                                </ol>
                                <p>20.4 Apabila menghantar Alkohol kepada Pembeli Alkohol:</p>
                                <ol type='i'>
                                    <li>ejen penghantaran berhak meminta pengenalan bergambar yang sah untuk tujuan pengesahan umur; dan</li>
                                    <li>Nightcat Digital Solutions (JM0919865-V) (melalui ejen penghantaran) berhak untuk menolak penghantaran Alkohol jika Pembeli Alkohol dan/atau Penerima kelihatan mabuk atau tidak dapat memberikan pengenalan bergambar yang sah untuk tujuan pengesahan umur.</li>
                                </ol>
                                <p>20.5 Setiap Pembeli Alkohol dan Penjual Alkohol secara berasingan bersetuju untuk menanggung rugi, mempertahankan dan tidak memudaratkan Nightcat Digital Solutions (JM0919865-V), dan pemegang saham, anak syarikat, ahli gabungan, pengarah, pegawai, ejen, penjenama bersama atau rakan kongsi lain dan pekerjanya (secara kolektif, 'Pihak Yang Ditanggung Rugi') daripada dan terhadap mana-mana dan semua tuntutan, tindakan, prosiding, dan guaman dan semua liabiliti, ganti rugi, penyelesaian, penalti, denda, kos dan perbelanjaan yang berkaitan (termasuk, tanpa had, apa-apa perbelanjaan penyelesaian pertikaian lain) yang ditanggung oleh mana-mana Pihak Yang Ditanggung Rugi yang timbul daripada atau berkaitan dengan: (a) sebarang ketidaktepatan atau pelanggaran representasinya dalam Seksyen 20.2 dan/atau Seksyen 20.3 (mengikut mana yang berkenaan); dan (b) pelanggaran mana-mana undang-undang atau mana-mana hak pihak ketiga.</p>
                            ",
                            CN: "
                                <p>20.1 Nightcat Digital Solutions (JM0919865-V) 允许在本网站上购买和销售酒类产品（“酒类”），但须遵守本第 20 条的条款和条件。如果您是酒类的买家（“酒类买家”），您将被视为当您在本网站上购买酒类时，您已同意本第 20 条中的条款和条件。同样，如果您是经批准的酒类销售商（“酒类销售商”），当您在本网站上销售酒类时，您将被视为已同意本第 20 条中的条款和条件。</p>
                                <p>20.2 如果您是酒类买家</p>
                                <ol type='i'>
                                    <li>您声明并保证您和（如果适用）接收酒精的人（“接收者”）是 (a) 21 岁或以上；(b) 不是穆斯林或根据任何法律、法规或宗教禁止购买酒类；(c) 了解以下内容：“MEMINUM ARAK BOLEH MEMBAHAYAKAN KESIHATAN”；和</li>
                                    <li>如果酒类销售商或 Nightcat Digital Solutions (JM0919865-V)（或其代理人）要求，您和/或收件人应提供带照片的身份证明以进行年龄验证。</li>
                                </ol>
                                <p>20.3 如果您是酒类销售商，您声明并保证：</p>
                                <ol type='i'>
                                    <li>您不是穆斯林或根据任何法律、法规或宗教禁止销售酒类；</li>
                                    <li>您持有通过本网站销售酒类所需的所有许可证和/或许可证，并应在 Nightcat Digital Solutions (JM0919865-V) 要求时立即向 Nightcat Digital Solutions (JM0919865-V) 提供此类许可证和/或许可证的副本以进行验证；和</li>
                                    <li>提供给 Nightcat Digital Solutions (JM0919865-V) 的所有信息和文件均真实准确。</li>
                                </ol>
                                <p>20.4 向酒类买家交付酒类时：</p>
                                <ol>
                                    <li>送货代理保留要求提供有效照片身份证明以进行年龄验证的权利；和</li>
                                    <li>如果酒类购买者和/或收件人看起来醉酒或无法提供有效的照片身份证明以进行年龄验证，Nightcat Digital Solutions (JM0919865-V)（通过送货代理）保留拒绝送货的权利。</li>
                                </ol>
                                <p>20.5 每位酒类买家和酒类卖家均分别同意对虾皮及其股东、子公司、附属公司、董事、高级职员、代理、联合品牌商或其他合作伙伴和员工（统称为“受偿方”）进行赔偿、辩护并使之免受伤害任何受偿方因以下原因发生的任何和所有索赔、诉讼、诉讼和诉讼以及所有相关责任、损害、和解、罚款、罚款、成本和费用（包括但不限于任何其他争议解决费用）或与： (a) 任何不准确或违反第 20.2 节和/或第 20.3 节（如适用）中的陈述；(b) 违反任何法律或第三方的任何权利。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "TRANSACTION FEES",
                            BM: "YURAN TRANSAKSI",
                            CN: "交易费用"
                        },
                        description: {
                            EN: "
                                <p>21.1 Nightcat Digital Solutions (JM0919865-V) charges a fee for all successful transactions completed on the Site (“Transaction Fee”). The Transaction Fee is borne by the Seller, and is calculated at two percent (2%) of the Buyer’s Purchase Monies, rounded up to the nearest cent. The Transaction Fee is subject to SST (“Tax Amount”), and the Seller is responsible for such Tax Amount.</p>
                                <p>21.2 For Sellers located outside of Malaysia, Nightcat Digital Solutions (JM0919865-V) charges a fee for all successful transactions completed on the Site (“Cross Border Fee”). The Cross Border Fee is borne by the Seller, and is calculated according to the rates as notified to such Sellers from time to time on the Site.</p>
                                <p>21.3 Following the successful completion of a transaction, Nightcat Digital Solutions (JM0919865-V) shall deduct the Transaction Fee and the Tax Amount, and the Cross Border Fee (as applicable) from the Buyer’s Purchase Monies, and remit the balance to the Seller in accordance with Section 12.2. Nightcat Digital Solutions (JM0919865-V) shall issue receipts or tax invoices for the Transaction Fee and Tax Amount paid by Seller on request.</p>
                            ",
                            BM: "
                                <p>21.1 Nightcat Digital Solutions (JM0919865-V) mengenakan bayaran untuk semua transaksi yang berjaya diselesaikan di Tapak (“Yuran Transaksi”). Yuran Transaksi ditanggung oleh Penjual, dan dikira pada dua peratus (2%) daripada Wang Belian Pembeli, dibundarkan kepada sen terdekat. Yuran Transaksi adalah tertakluk kepada SST (“Amaun Cukai”), dan Penjual bertanggungjawab untuk Amaun Cukai tersebut.</p>
                                <p>21.2 Untuk Penjual yang terletak di luar Malaysia, Nightcat Digital Solutions (JM0919865-V) mengenakan bayaran untuk semua transaksi yang berjaya disiapkan di Laman (“Yuran Merentas Sempadan”). Yuran Merentas Sempadan ditanggung oleh Penjual, dan dikira mengikut kadar yang dimaklumkan kepada Penjual tersebut dari semasa ke semasa di Tapak.</p>
                                <p>21.3 Selepas kejayaan menyelesaikan urus niaga, Nightcat Digital Solutions (JM0919865-V) hendaklah menolak Yuran Transaksi dan Amaun Cukai, dan Yuran Merentas Sempadan (yang berkenaan) daripada Wang Belian Pembeli, dan menyerahkan baki kepada Penjual mengikut Seksyen 12.2. Nightcat Digital Solutions (JM0919865-V) hendaklah mengeluarkan resit atau invois cukai untuk Yuran Transaksi dan Amaun Cukai yang dibayar oleh Penjual atas permintaan.</p>
                            ",
                            CN: "
                                <p>21.1 Nightcat Digital Solutions (JM0919865-V) 对在网站上完成的所有成功交易收取费用（“交易费”）。交易费由卖方承担，按买方购买款项的百分之二 (2%) 计算，四舍五入到最接近的美分。交易费用受 SST（“税额”）的约束，卖方负责该税额。</p>
                                <p>21.2 对于位于马来西亚境外的卖家，Nightcat Digital Solutions (JM0919865-V) 对在网站上完成的所有成功交易收取费用（“跨境费用”）。跨境费用由卖家承担，并根据网站上不时通知该卖家的费率计算。</p>
                                <p>21.3 交易成功完成后，虾皮应从买方的购买款项中扣除交易费用和税款以及跨境费用（如适用），并将余额按照第 12.2 条的规定汇给卖方。虾皮应根据卖家要求开具收据或税务发票，以显示卖家支付的交易费用和税款。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "DISPUTES",
                            BM: "PERTIKAIAN",
                            CN: "争议"
                        },
                        description: {
                            EN: "
                                <p>22.1 In the event a problem arises in a transaction, the Buyer and Seller agree to communicate with each other first to attempt to resolve such dispute by mutual discussions, which Nightcat Digital Solutions (JM0919865-V) shall use reasonable commercial efforts to facilitate. If the matter cannot be resolved by mutual discussions, Users may approach the claims tribunal of their local jurisdiction to resolve any dispute arising from a transaction.</p>
                                <p>22.2 Each Buyer and Seller covenants and agrees that it will not bring suit or otherwise assert any claim against Nightcat Digital Solutions (JM0919865-V) or its Affiliates (except where Nightcat Digital Solutions (JM0919865-V) or its Affiliates is the Seller of the product that the claim relates to) in relation to any transaction made on the Site or any dispute related to such transaction.</p>
                                <p>22.3 Users covered under Nightcat Digital Solutions (JM0919865-V) Guarantee may send written request to Nightcat Digital Solutions (JM0919865-V) to assist them in resolving issues which may arise from a transaction upon request. Nightcat Digital Solutions (JM0919865-V) may, at its sole discretion and with absolutely no liability to Seller and Buyer, take all necessary steps to assist Users resolving their dispute. For more information, please refer to Nightcat Digital Solutions (JM0919865-V)’s Refunds and Return Policy.</p>
                                <p>22.4 To be clear, the services provided under this Section 19 are only available to Buyers covered under Nightcat Digital Solutions (JM0919865-V) Guarantee. Buyer using other payment means for his/her purchase should contact Seller directly.</p>
                            ",
                            BM: "
                                <p>22.1 Sekiranya masalah timbul dalam transaksi, Pembeli dan Penjual bersetuju untuk berkomunikasi antara satu sama lain terlebih dahulu untuk cuba menyelesaikan pertikaian tersebut melalui perbincangan bersama, yang Nightcat Digital Solutions (JM0919865-V) akan menggunakan usaha komersial yang munasabah untuk memudahkan. Jika perkara itu tidak dapat diselesaikan melalui perbincangan bersama, Pengguna boleh mendekati tribunal tuntutan bidang kuasa tempatan mereka untuk menyelesaikan sebarang pertikaian yang timbul daripada transaksi.</p>
                                <p>2.2 Setiap Pembeli dan Penjual bersetuju dan bersetuju bahawa ia tidak akan membawa saman atau sebaliknya menuntut sebarang tuntutan terhadap Nightcat Digital Solutions (JM0919865-V) atau Ahli Gabungannya (kecuali di mana Nightcat Digital Solutions (JM0919865-V) atau Ahli Gabungannya adalah Penjual produk yang berkaitan dengan tuntutan itu) berhubung dengan sebarang transaksi yang dibuat pada Tapak atau sebarang pertikaian yang berkaitan dengan transaksi tersebut.</p>
                                <p>22.3 Pengguna yang dilindungi di bawah Jaminan Nightcat Digital Solutions (JM0919865-V) boleh menghantar permintaan bertulis kepada Nightcat Digital Solutions (JM0919865-V) untuk membantu mereka menyelesaikan isu yang mungkin timbul daripada transaksi atas permintaan. Nightcat Digital Solutions (JM0919865-V) boleh, mengikut budi bicara mutlaknya dan tanpa liabiliti sama sekali kepada Penjual dan Pembeli, mengambil semua langkah yang perlu untuk membantu Pengguna menyelesaikan pertikaian mereka. Untuk maklumat lanjut, sila rujuk Polisi Bayaran Balik dan Pemulangan Nightcat Digital Solutions (JM0919865-V)  .</p>
                                <p>22.4 Untuk menjadi jelas, perkhidmatan yang disediakan di bawah Seksyen 19 ini hanya tersedia untuk Pembeli yang dilindungi di bawah Jaminan Nightcat Digital Solutions (JM0919865-V). Pembeli yang menggunakan cara pembayaran lain untuk pembeliannya hendaklah menghubungi Penjual secara terus.</p>
                            ",
                            CN: "
                                <p>22.1 如交易中出现问题，买卖双方同意首先进行沟通，尝试通过双方协商解决该等争议，虾皮应采取合理的商业努力予以促进。如果问题不能通过相互讨论解决，用户可以联系当地司法管辖区的索赔法庭解决因交易引起的任何争议。</p>
                                <p>22.2 每一买方和卖方承诺并同意，不会就任何交易向虾皮或其关联公司（除非虾皮或其关联公司是索赔所涉产品的卖方）提起诉讼或以其他方式主张任何索赔。本网站或与此类交易相关的任何争议。</p>
                                <p>22.3 虾皮保证涵盖的用户可以向虾皮发送书面请求，以帮助他们解决因交易而产生的问题。Nightcat Digital Solutions (JM0919865-V) 可自行决定采取一切必要措施帮助用户解决争议，并且对卖家和买家绝对不承担任何责任。有关更多信息，请参阅 Nightcat Digital Solutions (JM0919865-V) 的 退款和退货政策。</p>
                                <p>22.4 需要明确的是，根据第 19 条提供的服务仅适用于 Nightcat Digital Solutions (JM0919865-V) 保证涵盖的买家。使用其他付款方式进行购买的买家应直接联系卖家。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "FEEDBACK",
                            BM: "MAKLUM BALAS",
                            CN: "反馈"
                        },
                        description: {
                            EN: "
                                <p>23.1 Nightcat Digital Solutions (JM0919865-V) welcomes information and feedback from our Users which will enable Nightcat Digital Solutions (JM0919865-V) to improve the quality of service provided. Please refer to our feedback procedure below for further information:</p>
                                <ol type='i'>
                                    <li>Feedback may be made in writing through email to or using the feedback form found on the App.</li>
                                    <li>Anonymous feedback will not be accepted.</li>
                                    <li>Users affected by the feedback should be fully informed of all facts and given the opportunity to put forward their case.</li>
                                    <li>Vague and defamatory feedback will not be entertained.</li>
                                </ol>
                            ",
                            BM: "
                                <p>23.1 Nightcat Digital Solutions (JM0919865-V) mengalu-alukan maklumat dan maklum balas daripada Pengguna kami yang akan membolehkan Nightcat Digital Solutions (JM0919865-V) meningkatkan kualiti perkhidmatan yang disediakan. Sila rujuk prosedur maklum balas kami di bawah untuk maklumat lanjut:</p>
                                <ol type='i'>
                                    <li>Maklum balas boleh dibuat secara bertulis melalui e-mel kepada atau menggunakan borang maklum balas yang terdapat pada Apl.</li>
                                    <li>Maklum balas tanpa nama tidak akan diterima.</li>
                                    <li>Pengguna yang terjejas oleh maklum balas harus dimaklumkan sepenuhnya tentang semua fakta dan diberi peluang untuk mengemukakan kes mereka.</li>
                                    <li>Maklum balas yang tidak jelas dan berunsur fitnah tidak akan dilayan.</li>
                                </ol>
                            ",
                            CN: "
                                <p>23.1 Nightcat Digital Solutions (JM0919865-V) 欢迎我们的用户提供信息和反馈，这将使 Nightcat Digital Solutions (JM0919865-V) 能够提高所提供的服务质量。请参阅下面的反馈程序以获取更多信息: </p>
                                <ol type='i'>
                                    <li>可以通过电子邮件或使用应用程序上的反馈表以书面形式提供反馈。</li>
                                    <li>不接受匿名反馈。</li>
                                    <li>受反馈影响的用户应充分了解所有事实，并有机会提出他们的案例。</li>
                                    <li>不接受含糊其辞和诽谤性的反馈。</li>
                                </ol>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "DISCLAIMERS",
                            BM: "PENAFIAN",
                            CN: "免责声明"
                        },
                        description: {
                            EN: "
                                <p>24.1 THE SERVICES ARE PROVIDED 'AS IS' AND WITHOUT ANY WARRANTIES, CLAIMS OR REPRESENTATIONS MADE BY Nightcat Digital Solutions (JM0919865-V) OF ANY KIND EITHER EXPRESSED, IMPLIED OR STATUTORY WITH RESPECT TO THE SERVICES, INCLUDING, WITHOUT LIMITATION, WARRANTIES OF QUALITY, PERFORMANCE, NON-INFRINGEMENT, MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE, NOR ARE THERE ANY WARRANTIES CREATED BY COURSE OF DEALING, COURSE OF PERFORMANCE OR TRADE USAGE. WITHOUT LIMITING THE FOREGOING AND TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, Nightcat Digital Solutions (JM0919865-V) DOES NOT WARRANT THAT THE SERVICES, THIS SITE OR THE FUNCTIONS CONTAINED THEREIN WILL BE AVAILABLE, ACCESSIBLE, UNINTERRUPTED, TIMELY, SECURE, ACCURATE, COMPLETE OR ERROR-FREE, THAT DEFECTS, IF ANY, WILL BE CORRECTED, OR THAT THIS SITE AND/OR THE SERVER THAT MAKES THE SAME AVAILABLE ARE FREE OF VIRUSES, CLOCKS, TIMERS, COUNTERS, WORMS, SOFTWARE LOCKS, DROP DEAD DEVICES, TROJAN-HORSES, ROUTINGS, TRAP DOORS, TIME BOMBS OR ANY OTHER HARMFUL CODES, INSTRUCTIONS, PROGRAMS OR COMPONENTS.</p>
                                <p>24.2 YOU ACKNOWLEDGE THAT THE ENTIRE RISK ARISING OUT OF THE USE OR PERFORMANCE OF THE SITE AND/OR THE SERVICES REMAINS WITH YOU TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW.</p>
                                <p>24.3 Nightcat Digital Solutions (JM0919865-V) HAS NO CONTROL OVER AND, TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, DOES NOT GUARANTEE OR ACCEPT ANY RESPONSIBILITY FOR: (A) THE FITNESS FOR PURPOSE, EXISTENCE, QUALITY, SAFETY OR LEGALITY OF ITEMS AVAILABLE VIA THE SERVICES; OR (B) THE ABILITY OF SELLERS TO SELL ITEMS OR OF BUYERS TO PAY FOR ITEMS.IF THERE IS A DISPUTE INVOLVING ONE OR MORE USERS, SUCH USERS AGREE TO RESOLVE SUCH DISPUTE BETWEEN THEMSELVES DIRECTLY AND, TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, RELEASE Nightcat Digital Solutions (JM0919865-V) AND ITS AFFILIATES FROM ANY AND ALL CLAIMS, DEMANDS AND DAMAGES ARISING OUT OF OR IN CONNECTION WITH ANY SUCH DISPUTE.</p>
                            ",
                            BM: "
                                <p>24.1 PERKHIDMATAN DISEDIAKAN 'SEBAGAIMANA ADANYA' DAN TANPA SEBARANG WARANTI, TUNTUTAN ATAU PERWAKILAN YANG DIBUAT OLEH MANA-MANA ​​JENIS KEDAI SAMA ADA TERNYATA, TERSIRAT ATAU BERKANUN BERKENAAN DENGAN PERKHIDMATAN, TERMASUK, HAD, TANPA KEBENARAN, TANPA KEBENARAN KEBOLEHPERDAGANGAN, ATAU KESESUAIAN UNTUK TUJUAN TERTENTU, TIDAK ADA APA-APA WARANTI YANG DIBUAT MELALUI KURSUS URUSAN, KURSUS PRESTASI ATAU PENGGUNAAN PERDAGANGAN. TANPA MENGHADKAN PERKARA DI ATAS DAN SEJAUH MAKSIMUM YANG DIBENARKAN OLEH UNDANG-UNDANG YANG BERKENAAN, Nightcat Digital Solutions (JM0919865-V) TIDAK MENJAMIN BAHAWA PERKHIDMATAN, LAMAN INI ATAU FUNGSI YANG TERKANDUNG DI DALAMNYA AKAN TERSEDIA, BOLEH DIAKSES, TIDAK TERGANGGU, TEPAT MASA, DIAMANKAN. KECACATAN, JIKA ADA, AKAN DIBETULKAN, ATAU BAHAWA LAMAN INI DAN/ATAU SERVER YANG MENYEDIAKAN YANG SAMA ADALAH BEBAS VIRUS, JAM, PEMASA, KAUNTER,</p>
                                <p>24.2 ANDA MENGAKUI BAHAWA KESELURUHAN RISIKO YANG TIMBUL DARIPADA PENGGUNAAN ATAU PRESTASI LAMAN INI DAN/ATAU PERKHIDMATAN KEKAL DENGAN ANDA SEHINGGA SEJAUH MAKSIMUM YANG DIBENARKAN OLEH UNDANG-UNDANG YANG BERKENAAN.</p>
                                <p>24.3 Nightcat Digital Solutions (JM0919865-V) TIDAK MEMPUNYAI KAWALAN KE ATAS DAN, SEHINGGA MAKSIMUM YANG DIBENARKAN OLEH UNDANG-UNDANG YANG BERKENAAN, TIDAK MENJAMIN ATAU MENERIMA SEBARANG TANGGUNGJAWAB UNTUK: (A) KESESUAIAN UNTUK TUJUAN, KEWUJUDAN, KUALITI, KESELAMATAN ATAU LEGALITI TERHADAP PERKHIDMATAN; ATAU (B) KEMAMPUAN PENJUAL MENJUAL BARANG ATAU PEMBELI UNTUK MEMBAYAR BARANG. JIKA TERDAPAT PERTIKAIAN YANG MELIBATKAN SATU ATAU LEBIH PENGGUNA, PENGGUNA TERSEBUT BERSETUJU UNTUK MENYELESAIKAN PERTIKAIAN TERSEBUT ANTARA MEREKA SECARA LANGSUNG DAN, SEHINGGA MAKSIMUM YANG DIBENARKAN , MELEPASKAN Nightcat Digital Solutions (JM0919865-V) DAN AHLINYA DARIPADA SEBARANG DAN SEMUA TUNTUTAN, TUNTUTAN DAN KEROSAKAN YANG TIMBUL DARIPADA ATAU BERKAITAN DENGAN SEBARANG PERTIKAIAN TERSEBUT.</p>
                            ",
                            CN: "
                                <p>24.1 服务按“原样”提供，不提供任何形式的保证、索赔或由零售商做出的任何形式的明示、暗示或法定的关于服务的陈述，包括但不限于质量保证、免责声明、免责声明适销性或特定用途的适用性，也不存在由交易过程、表现过程或贸易使用过程产生的任何保证。在不限制前述规定的情况下，并在适用法律允许的最大范围内，Nightcat Digital Solutions (JM0919865-V) 不保证服务、本网站或其中包含的功能将可用、可访问、不间断、错误、及时、安全或安全缺陷（如果有）将得到纠正，或者本网站和/或提供相同功能的服务器没有病毒、时钟、计时器、计数器、</p>
                                <p>24.2 您承认在适用法律允许的最大范围内，因使用或执行本网站和/或服务而产生的全部风险由您承担。</p>
                                <p>24.3 购物者无法控制，并且在适用法律允许的最大范围内，不保证或承担任何责任：(A) 其目的、存在、质量、安全性或合法性；或 (B) 卖家销售商品或买家支付商品的能力。如果发生涉及一个或多个用户的争议，这些用户同意直接解决他们之间的此类争议，并在最大允许范围内, 使 Nightcat Digital Solutions (JM0919865-V) 及其附属公司免于因任何此类争议引起或与之相关的任何和所有索赔、要求和损害。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "EXCLUSIONS AND LIMITATIONS OF LIABILITY",
                            BM: "PENGECUALIAN DAN HAD LIABILITI",
                            CN: "责任的排除和限制"
                        },
                        description: {
                            EN: "
                                <p>25.1 TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL Nightcat Digital Solutions (JM0919865-V) BE LIABLE WHETHER IN CONTRACT, WARRANTY, TORT (INCLUDING, WITHOUT LIMITATION, NEGLIGENCE (WHETHER ACTIVE, PASSIVE OR IMPUTED), PRODUCT LIABILITY, STRICT LIABILITY OR OTHER THEORY), OR OTHER CAUSE OF ACTION AT LAW, IN EQUITY, BY STATUTE OR OTHERWISE, FOR:</p>
                                <ol type='i'>
                                    <li>(A) LOSS OF USE; (B) LOSS OF PROFITS; (C) LOSS OF REVENUES; (D) LOSS OF DATA; (E) LOSS OF GOOD WILL; OR (F) FAILURE TO REALISE ANTICIPATED SAVINGS, IN EACH CASE WHETHER DIRECT OR INDIRECT; OR</li>
                                    <li>ANY INDIRECT, INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES, ARISING OUT OF OR IN CONNECTION WITH THE USE OR INABILITY TO USE THIS SITE OR THE SERVICES, INCLUDING, WITHOUT LIMITATION, ANY DAMAGES RESULTING THEREFROM, EVEN IF Nightcat Digital Solutions (JM0919865-V) HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.</li>
                                </ol>
                                <p>25.2 YOU ACKNOWLEDGE AND AGREE THAT YOUR ONLY RIGHT WITH RESPECT TO ANY PROBLEMS OR DISSATISFACTION WITH THE SERVICES IS TO REQUEST FOR TERMINATION OF YOUR ACCOUNT AND/OR DISCONTINUE ANY USE OF THE SERVICES.</p>
                                <p>25.3 IF, NOTWITHSTANDING THE PREVIOUS SECTIONS, Nightcat Digital Solutions (JM0919865-V) IS FOUND BY A COURT OF COMPETENT JURISDICTION TO BE LIABLE (INCLUDING FOR GROSS NEGLIGENCE), THEN, TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ITS LIABILITY TO YOU OR TO ANY THIRD PARTY IS LIMITED TO THE LESSER OF: (A) ANY AMOUNTS DUE AND PAYABLE TO YOU PURSUANT TO THE Nightcat Digital Solutions (JM0919865-V) GUARANTEE; AND (B) SG $100 (ONE HUNDRED SINGAPORE DOLLARS).</p>
                                <p>25.4 NOTHING IN THESE TERMS OF SERVICE SHALL LIMIT OR EXCLUDE ANY LIABILITY FOR DEATH OR PERSONAL INJURY CAUSED BY Nightcat Digital Solutions (JM0919865-V)’S NEGLIGENCE, FOR FRAUD OR FOR ANY OTHER LIABILITY ON THE PART OF Nightcat Digital Solutions (JM0919865-V) THAT CANNOT BE LAWFULLY LIMITED AND/OR EXCLUDED.</p>
                            ",
                            BM: "
                                <p>25.1 SEHINGGA MAKSIMUM YANG DIBENARKAN OLEH UNDANG-UNDANG YANG BERKENAAN, Nightcat Digital Solutions (JM0919865-V) TIDAK AKAN BERTANGGUNGJAWAB SAMA ADA DALAM KONTRAK, WARANTI, TORT (TERMASUK, TANPA HAD, KECUAIAN (SAMA ADA AKTIF, PASIF ATAU DIIPUTI), BILLILIAITI PRODUK ATAU PUNCA LAIN TINDAKAN DI UNDANG-UNDANG, DALAM EKUITI, MENGIKUT STATUT ATAU SEBALIKNYA, UNTUK:</p>
                                <ol type='i'>
                                    <li>(A) KEHILANGAN PENGGUNAAN; (B) KEHILANGAN KEUNTUNGAN; (C) KEHILANGAN HASIL; (D) KEHILANGAN DATA; (E) KEHILANGAN NIAT BAIK; ATAU (F) GAGAL UNTUK MEREALISASIKAN SIMPANAN YANG DIJANGKA, DALAM SETIAP KES SAMA ADA LANGSUNG ATAU TIDAK LANGSUNG; ATAU</li>
                                    <li>SEBARANG KEROSAKAN TIDAK LANGSUNG, SAMPINGAN, KHAS ATAU AKIBAT, YANG TIMBUL DARIPADA ATAU BERHUBUNGAN DENGAN PENGGUNAAN ATAU KETIDAKPUPAYAAN UNTUK MENGGUNAKAN LAMAN INI ATAU PERKHIDMATAN, TERMASUK, TANPA HAD, SEBARANG KEROSAKAN, YANG MENDAPATKAN KEBENARANNYA KEMUNGKINAN KEROSAKAN TERSEBUT.</li>
                                </ol>
                                <p>25.2 ANDA MENGAKUI DAN BERSETUJU BAHAWA HAK ANDA SATU-SATUNYA BERHUBUNG DENGAN SEBARANG MASALAH ATAU KETIDAPUASANAAN TERHADAP PERKHIDMATAN ADALAH UNTUK MEMOHON PENAMATAN AKAUN ANDA DAN/ATAU MENAMBAHKAN SEBARANG PENGGUNAAN PERKHIDMATAN.</p>
                                <p>25.3 JIKA, WALAUPUN BAHAGIAN TERDAHULU, Nightcat Digital Solutions (JM0919865-V) DIDAPATI OLEH MAHKAMAH BIDANG KUASA YANG KOMPETEN UNTUK BERTANGGUNGJAWAB (TERMASUK ATAS KECUAIAN KASAR), MAKA, SEJAUH MAKSIMUM YANG DIBENARKAN OLEH UNDANG-UNDANG YANG BERKENAAN, TANGGUNGJAWABNYA TERHADAP TANGGUNGJAWABNYA. YANG LEBIH KURANG DARIPADA: (A) SEBARANG JUMLAH TERHUTANG DAN DIBAYAR KEPADA ANDA MENURUT JAMINAN Nightcat Digital Solutions (JM0919865-V); DAN (B) SG $100 (SATU RATUS DOLLAR SINGAPURA).</p>
                                <p>25.4 TIADA APA-APA DALAM SYARAT PERKHIDMATAN INI AKAN MENGHAD ATAU MENGECUALIKAN SEBARANG LIABILITI UNTUK KEMATIAN ATAU KECEDERAAN DIRI YANG DISEBABKAN OLEH KECUAIAN Nightcat Digital Solutions (JM0919865-V), UNTUK PENIPUAN ATAU UNTUK APA-APA LIABILITI LAIN BAGI BAHAGIAN Nightcat Digital Solutions (JM0919865-V) YANG TIDAK BOLEH DIKEHADIRAN SECARA SAH DAN SECARA SAH.</p>
                            ",
                            CN: "
                                <p>25.1 在适用法律允许的最大范围内，无论是在合同、担保、侵权（包括但不限于、疏忽（无论是主动的、被动的或因生产性推定的）、其他责任）、或其他法律、衡平法、法规或其他原因的诉讼原因，用于: </p>
                                <ol type='i'>
                                    <li>(A) 无法使用；(B) 利润损失；(C) 收入损失；(D) 数据丢失；(E) 丧失善意；或 (F) 未能实现预期的节省，无论是直接的还是间接的；或者</li>
                                    <li>由使用或无法使用本网站或服务引起的或与之相关的任何间接、附带、特殊或后果性损害，包括但不限于由此产生的任何损害，即使不考虑此类损害的可能性。</li>
                                </ol>
                                <p>25.2 您承认并同意，对于任何问题或对服务的不满，您唯一的权利是要求终止您的帐户和/或停止使用服务。</p>
                                <p>25.3 如果，尽管有前面的部分，Nightcat Digital Solutions (JM0919865-V) 被主管司法管辖区的法院认定应承担责任（包括重大过失），那么，在适用法律允许的最大范围内，您或您应承担的责任以较少者为准：(A) 根据商店保证应支付给您的任何金额；和 (B) 100 新加坡元（一百新加坡元）。</p>
                                <p>25.4 本服务条款中的任何内容均不得限制或排除因购物者的疏忽、欺诈或任何其他不能免除和免除/免除的购物者责任而造成的死亡或人身伤害的责任。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "LINKS TO THIRD PARTY SITES AND SHARING VIDEOS FROM YOUTUBE",
                            BM: "PAUTAN KE LAMAN PIHAK KETIGA DAN PERKONGSIAN VIDEO DARI YOUTUBE",
                            CN: "第三方网站链接和来自 YouTube 的共享视频"
                        },
                        description: {
                            EN: "
                                <p>26.1 Third party links provided throughout the Site will let you leave this Site. These links are provided as a courtesy only, and the sites they link to are not under the control of Nightcat Digital Solutions (JM0919865-V) in any manner whatsoever and you therefore access them at your own risk. Nightcat Digital Solutions (JM0919865-V) is in no manner responsible for the contents of any such linked site or any link contained within a linked site, including any changes or updates to such sites. Nightcat Digital Solutions (JM0919865-V) is providing these links merely as a convenience, and the inclusion of any link does not in any way imply or express affiliation, endorsement or sponsorship by Nightcat Digital Solutions (JM0919865-V) of any linked site and/or any of its content therein.</p>
                                <p>26.2 Nightcat Digital Solutions (JM0919865-V) allows you to share videos from YouTube on the Nightcat Digital Solutions (JM0919865-V) Livestream feature (“YouTube Content”). By sharing YouTube Content, you hereby agree to be bound by the YouTube Terms of Service (<a href='https://www.youtube.com/t/terms'>https://www.youtube.com/t/terms</a>). </p>
                            ",
                            BM: "
                                <p>26.1 Pautan pihak ketiga yang disediakan di seluruh Laman akan membenarkan anda meninggalkan Laman ini. Pautan ini disediakan sebagai ihsan sahaja, dan tapak yang mereka pautkan tidak berada di bawah kawalan Nightcat Digital Solutions (JM0919865-V) dalam apa cara sekalipun dan oleh itu anda mengaksesnya atas risiko anda sendiri. Nightcat Digital Solutions (JM0919865-V) sama sekali tidak bertanggungjawab ke atas kandungan mana-mana tapak yang dipautkan atau mana-mana pautan yang terkandung dalam tapak yang dipautkan, termasuk sebarang perubahan atau kemas kini pada tapak tersebut. Nightcat Digital Solutions (JM0919865-V) menyediakan pautan ini semata-mata sebagai kemudahan, dan kemasukan mana-mana pautan tidak sama sekali membayangkan atau menyatakan pertalian, pengesahan atau penajaan oleh Nightcat Digital Solutions (JM0919865-V) terhadap mana-mana tapak yang dipautkan dan/atau mana-mana kandungannya di dalamnya.</p>
                                <p>26.2 Nightcat Digital Solutions (JM0919865-V) membenarkan anda berkongsi video daripada YouTube pada ciri Strim Langsung Nightcat Digital Solutions (JM0919865-V) (“Kandungan YouTube”). Dengan berkongsi Kandungan YouTube, anda dengan ini bersetuju untuk terikat dengan Syarat Perkhidmatan YouTube ( <a href='https://www.youtube.com/t/terms'>https://www.youtube.com/t/terms</a> ). </p>
                            ",
                            CN: "
                                <p>26.1 本网站提供的第三方链接将使您离开本网站。这些链接仅作为礼貌提供，它们链接到的网站不受 Nightcat Digital Solutions (JM0919865-V) 以任何方式控制，因此您需要自行承担访问它们的风险。Nightcat Digital Solutions (JM0919865-V) 不对任何此类链接站点的内容或链接站点中包含的任何链接负责，包括对此类站点的任何更改或更新。Nightcat Digital Solutions (JM0919865-V) 提供这些链接只是为了方便起见，包含任何链接并不以任何方式暗示或表示 Nightcat Digital Solutions (JM0919865-V) 对任何链接网站和/或其任何内容的附属、认可或赞助。</p>
                                <p>26.2 Nightcat Digital Solutions (JM0919865-V) 允许您在 Nightcat Digital Solutions (JM0919865-V) 直播功能（“YouTube 内容”）上分享来自 YouTube 的视频。分享 YouTube 内容，即表示您同意受 YouTube 服务条款 ( <a href='https://www.youtube.com/t/terms'>https://www.youtube.com/t/terms</a> ) 的约束</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "YOUR CONTRIBUTIONS TO THE SERVICES",
                            BM: "SUMBANGAN ANDA KEPADA PERKHIDMATAN",
                            CN: "您对服务的贡献"
                        },
                        description: {
                            EN: "
                                <p>27.1 By submitting Content for inclusion on the Services, you represent and warrant that you have all necessary rights and/or permissions to grant the licenses below to Nightcat Digital Solutions (JM0919865-V). You further acknowledge and agree that you are solely responsible for anything you post or otherwise make available on or through the Services, including, without limitation, the accuracy, reliability, nature, rights clearance, compliance with law and legal restrictions associated with any Content contribution. You hereby grant Nightcat Digital Solutions (JM0919865-V) and its successors a perpetual, irrevocable, worldwide, non-exclusive, royalty-free, sub-licensable and transferable license to use, copy, distribute, republish, transmit, modify, adapt, create derivative works of, publicly display, and publicly perform such Content contribution on, through or in connection with the Services in any media formats and through any media channels, including, without limitation, for promoting and redistributing part of the Services (and its derivative works) without need of attribution and you agree to waive any moral rights (and any similar rights in any part of the world) in that respect. You understand that your contribution may be transmitted over various networks and changed to conform and adapt to technical requirements.</p>
                                <p>27.2 Any Content, material, information or idea you post on or through the Services, or otherwise transmit to Nightcat Digital Solutions (JM0919865-V) by any means (each, a 'Submission'), is not considered confidential by Nightcat Digital Solutions (JM0919865-V) and may be disseminated or used by Nightcat Digital Solutions (JM0919865-V) without compensation or liability to you for any purpose whatsoever, including, but not limited to, developing, manufacturing and marketing products. By making a Submission to Nightcat Digital Solutions (JM0919865-V), you acknowledge and agree that Nightcat Digital Solutions (JM0919865-V) and/or other third parties may independently develop software, applications, interfaces, products and modifications and enhancements of the same which are identical or similar in function, code or other characteristics to the ideas set out in your Submission. Accordingly, you hereby grant Nightcat Digital Solutions (JM0919865-V) and its successors a perpetual, irrevocable, worldwide, non-exclusive, royalty-free, sub-licensable and transferable license to develop the items identified above, and to use, copy, distribute, republish, transmit, modify, adapt, create derivative works of, publicly display, and publicly perform any Submission on, through or in connection with the Services in any media formats and through any media channels, including, without limitation, for promoting and redistributing part of the Services (and its derivative works). This provision does not apply to personal information that is subject to our privacy policy except to the extent that you make such personal information publicly available on or through the Services.</p>
                            ",
                            BM: "
                                <p>27.1 Dengan menyerahkan Kandungan untuk dimasukkan ke dalam Perkhidmatan, anda menyatakan dan menjamin bahawa anda mempunyai semua hak dan/atau kebenaran yang diperlukan untuk memberikan lesen di bawah kepada Nightcat Digital Solutions (JM0919865-V). Anda selanjutnya mengakui dan bersetuju bahawa anda bertanggungjawab sepenuhnya untuk apa sahaja yang anda siarkan atau sebaliknya sediakan pada atau melalui Perkhidmatan, termasuk, tanpa had, ketepatan, kebolehpercayaan, sifat, pelepasan hak, pematuhan undang-undang dan sekatan undang-undang yang berkaitan dengan sebarang sumbangan Kandungan . Anda dengan ini memberikan Nightcat Digital Solutions (JM0919865-V) dan penggantinya lesen kekal, tidak boleh ditarik balik, di seluruh dunia, tidak eksklusif, bebas royalti, sub-lesen dan boleh dipindah milik untuk menggunakan, menyalin, mengedar, menerbitkan semula, menghantar, mengubah suai, mengadaptasi, mencipta karya terbitan, dipaparkan secara umum , dan secara terbuka melaksanakan sumbangan Kandungan sedemikian pada, melalui atau berkaitan dengan Perkhidmatan dalam sebarang format media dan melalui mana-mana saluran media, termasuk, tanpa had, untuk mempromosikan dan mengagihkan semula sebahagian daripada Perkhidmatan (dan karya terbitannya) tanpa memerlukan atribusi dan anda bersetuju untuk mengetepikan sebarang hak moral (dan mana-mana hak yang serupa di mana-mana bahagian dunia) dalam hal itu. Anda memahami bahawa sumbangan anda mungkin dihantar melalui pelbagai rangkaian dan diubah untuk mematuhi dan menyesuaikan diri dengan keperluan teknikal.</p>
                                <p>27.2 Sebarang Kandungan, bahan, maklumat atau idea yang anda siarkan pada atau melalui Perkhidmatan, atau sebaliknya hantar kepada Nightcat Digital Solutions (JM0919865-V) melalui sebarang cara (setiap satu, 'Penyerahan'), tidak dianggap sulit oleh Nightcat Digital Solutions (JM0919865-V) dan boleh disebarkan atau digunakan oleh Nightcat Digital Solutions (JM0919865-V) tanpa pampasan atau liabiliti kepada anda untuk apa-apa tujuan sekalipun, termasuk, tetapi tidak terhad kepada, pembangunan, pembuatan dan pemasaran produk. Dengan membuat Penyerahan kepada Nightcat Digital Solutions (JM0919865-V), anda mengakui dan bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) dan/atau pihak ketiga lain boleh secara bebas membangunkan perisian, aplikasi, antara muka, produk dan pengubahsuaian dan penambahbaikan yang sama atau serupa dalam fungsi, kod atau ciri lain dengan idea yang dinyatakan dalam Penyerahan anda. Sehubungan itu, anda dengan ini memberikan Nightcat Digital Solutions (JM0919865-V) dan penggantinya yang kekal, tidak boleh ditarik balik, di seluruh dunia, tidak eksklusif, bebas royalti, lesen boleh sub-lesen dan boleh dipindah milik untuk membangunkan item yang dikenal pasti di atas, dan untuk menggunakan, menyalin, mengedar, menerbitkan semula, menghantar, mengubah suai, menyesuaikan, mencipta karya terbitan, memaparkan secara umum, dan melaksanakan sebarang Penyerahan secara terbuka pada, melalui atau berkaitan dengan Perkhidmatan dalam sebarang format media dan melalui mana-mana saluran media, termasuk, tanpa had, untuk mempromosikan dan mengagihkan semula sebahagian daripada Perkhidmatan (dan karya terbitannya). Peruntukan ini tidak terpakai kepada maklumat peribadi yang tertakluk kepada dasar privasi kami kecuali setakat anda menjadikan maklumat peribadi tersebut tersedia secara terbuka pada atau melalui Perkhidmatan. dan secara terbuka melaksanakan sebarang Penyerahan pada, melalui atau berkaitan dengan Perkhidmatan dalam mana-mana format media dan melalui mana-mana saluran media, termasuk, tanpa had, untuk mempromosikan dan mengagihkan semula sebahagian daripada Perkhidmatan (dan karya terbitannya). Peruntukan ini tidak terpakai kepada maklumat peribadi yang tertakluk kepada dasar privasi kami kecuali setakat anda menjadikan maklumat peribadi tersebut tersedia secara terbuka pada atau melalui Perkhidmatan. dan secara terbuka melaksanakan sebarang Penyerahan pada, melalui atau berkaitan dengan Perkhidmatan dalam mana-mana format media dan melalui mana-mana saluran media, termasuk, tanpa had, untuk mempromosikan dan mengagihkan semula sebahagian daripada Perkhidmatan (dan karya terbitannya). Peruntukan ini tidak terpakai kepada maklumat peribadi yang tertakluk kepada dasar privasi kami kecuali setakat anda menjadikan maklumat peribadi tersebut tersedia secara terbuka pada atau melalui Perkhidmatan.</p>
                            ",
                            CN: "
                                <p>27.1 通过提交包含在服务中的内容，您声明并保证您拥有向 Nightcat Digital Solutions (JM0919865-V) 授予以下许可的所有必要权利和/或许可。您进一步承认并同意，您对您在服务上或通过服务发布或以其他方式提供的任何内容负全部责任，包括但不限于准确性、可靠性、性质、权利清除、遵守与任何内容贡献相关的法律和法律限制. 您在此授予 Nightcat Digital Solutions (JM0919865-V) 及其继承者永久、不可撤销、全球性、非排他性、免版税、可再许可和可转让的许可，以使用、复制、分发、重新发布、传输、修改、改编、创建衍生作品、公开展示，并公开执行此类内容贡献，通过或与服务相关的任何媒体格式和任何媒体渠道，包括但不限于宣传和重新分发部分服务（及其衍生作品）而无需署名，并且您同意放弃任何精神权利（和世界任何地方的任何类似权利）在这方面。您了解您的贡献可能会通过各种网络传输并更改以符合和适应技术要求。</p>
                                <p>27.2 您在服务上或通过服务发布或以其他方式以任何方式传输给虾皮的任何内容、材料、信息或想法（每个，“提交”）均不被虾皮视为机密，虾皮可能会传播或使用而无需补偿或出于任何目的对您承担任何责任，包括但不限于开发、制造和营销产品。通过向 Nightcat Digital Solutions (JM0919865-V) 提交内容，您承认并同意 Nightcat Digital Solutions (JM0919865-V) 和/或其他第三方可以独立开发软件、应用程序、界面、产品及其修改和改进，在功能、代码或其他特征上与在您的提交中提出的想法。因此，您在此授予 Nightcat Digital Solutions (JM0919865-V) 及其继承者永久的、不可撤销的、全球性的、非排他性的、免版税的、可再许可和可转让的许可，以开发上述项目，以及使用、复制、分发、重新发布、传输、修改、改编、创建衍生作品、公开展示和公开执行任何提交以任何媒体格式和通过任何媒体渠道提供的服务，包括但不限于宣传和重新分发部分服务（及其衍生作品）。本条款不适用于受我们隐私政策约束的个人信息，除非您在服务上或通过服务公开此类个人信息。并以任何媒体格式和任何媒体渠道在服务上、通过服务或与服务相关的公开提交任何内容，包括但不限于宣传和重新分发部分服务（及其衍生作品）。本条款不适用于受我们隐私政策约束的个人信息，除非您在服务上或通过服务公开此类个人信息。并以任何媒体格式和任何媒体渠道在服务上、通过服务或与服务相关的公开提交任何内容，包括但不限于宣传和重新分发部分服务（及其衍生作品）。本条款不适用于受我们隐私政策约束的个人信息，除非您在服务上或通过服务公开此类个人信息。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "THIRD PARTY CONTRIBUTIONS TO THE SERVICES AND EXTERNAL LINKS",
                            BM: "SUMBANGAN PIHAK KETIGA KEPADA PERKHIDMATAN DAN PAUTAN LUAR",
                            CN: "第三方对服务和外部链接的贡献"
                        },
                        description: {
                            EN: "
                                <p>28.1 Each contributor to the Services of data, text, images, sounds, video, software and other Content is solely responsible for the accuracy, reliability, nature, rights clearance, compliance with law and legal restrictions associated with their Content contribution. As such, Nightcat Digital Solutions (JM0919865-V) is not responsible to, and shall not, regularly monitor or check for the accuracy, reliability, nature, rights clearance, compliance with law and legal restrictions associated with any contribution of Content. You will not hold Nightcat Digital Solutions (JM0919865-V) responsible for any User's actions or inactions, including, without limitation, things they post or otherwise make available via the Services.</p>
                                <p>28.2 In addition, the Services may contain links to third party products, websites, services and offers. These third party links, products, websites and services are not owned or controlled by Nightcat Digital Solutions (JM0919865-V). Rather, they are operated by, and are the property of, the respective third parties, and may be protected by applicable copyright or other intellectual property laws and treaties. Nightcat Digital Solutions (JM0919865-V) has not reviewed, and assumes no responsibility for the content, functionality, security, services, privacy policies, or other practices of these third parties. You are encouraged to read the terms and other policies published by such third parties on their websites or otherwise. By using the Services,</p> you agree that Nightcat Digital Solutions (JM0919865-V) shall not be liable in any manner due to your use of, or inability to use, any website or widget. You further acknowledge and agree that Nightcat Digital Solutions (JM0919865-V) may disable your use of, or remove, any third party links, or applications on the Services to the extent they violate these Terms of Service.
                            ",
                            BM: "
                                <p>28.1 Setiap penyumbang kepada Perkhidmatan data, teks, imej, bunyi, video, perisian dan Kandungan lain bertanggungjawab sepenuhnya untuk ketepatan, kebolehpercayaan, sifat, pelepasan hak, pematuhan undang-undang dan sekatan undang-undang yang berkaitan dengan sumbangan Kandungan mereka. Oleh itu, Nightcat Digital Solutions (JM0919865-V) tidak bertanggungjawab untuk, dan tidak akan, sentiasa memantau atau menyemak ketepatan, kebolehpercayaan, sifat, pelepasan hak, pematuhan undang-undang dan sekatan undang-undang yang berkaitan dengan sebarang sumbangan Kandungan. Anda tidak akan menganggap Nightcat Digital Solutions (JM0919865-V) bertanggungjawab ke atas sebarang tindakan atau ketiadaan tindakan Pengguna, termasuk, tanpa had, perkara yang mereka siarkan atau sebaliknya sediakan melalui Perkhidmatan.</p>
                                <p>28.2 Selain itu, Perkhidmatan mungkin mengandungi pautan kepada produk, tapak web, perkhidmatan dan tawaran pihak ketiga. Pautan, produk, laman web dan perkhidmatan pihak ketiga ini tidak dimiliki atau dikawal oleh Nightcat Digital Solutions (JM0919865-V). Sebaliknya, mereka dikendalikan oleh, dan merupakan hak milik, pihak ketiga masing-masing, dan mungkin dilindungi oleh hak cipta yang berkenaan atau undang-undang dan perjanjian harta intelek yang lain. Nightcat Digital Solutions (JM0919865-V) belum menyemak dan tidak bertanggungjawab terhadap kandungan, fungsi, keselamatan, perkhidmatan, dasar privasi atau amalan lain pihak ketiga ini. Anda digalakkan untuk membaca terma dan dasar lain yang diterbitkan oleh pihak ketiga tersebut di tapak web mereka atau sebaliknya. Dengan menggunakan Perkhidmatan, anda bersetuju bahawa Nightcat Digital Solutions (JM0919865-V) tidak akan bertanggungjawab dalam apa jua cara disebabkan oleh penggunaan anda, atau ketidakupayaan untuk menggunakan, mana-mana tapak web atau widget.</p>
                            ",
                            CN: "
                                <p>28.1 数据、文本、图像、声音、视频、软件和其他内容服务的每个贡献者全权负责与其内容贡献相关的准确性、可靠性、性质、权利清除、遵守法律和法律限制。因此，Nightcat Digital Solutions (JM0919865-V) 不负责也不应定期监控或检查与任何内容贡献相关的准确性、可靠性、性质、权利清除、遵守法律和法律限制。您不会让 Nightcat Digital Solutions (JM0919865-V) 对任何用户的作为或不作为负责，包括但不限于他们通过服务发布或以其他方式提供的内容。</p>
                                <p>28.2 此外，服务可能包含第三方产品、网站、服务和优惠的链接。这些第三方链接、产品、网站和服务不归 Nightcat Digital Solutions (JM0919865-V) 所有或控制。相反，它们由各自的第三方运营并为其财产，并且可能受适用的版权或其他知识产权法律和条约的保护。Nightcat Digital Solutions (JM0919865-V) 未审查这些第三方的内容、功能、安全性、服务、隐私政策或其他做法，也不对其承担任何责任。我们鼓励您阅读此类第三方在其网站或其他地方发布的条款和其他政策。通过使用服务，您同意虾皮不因您使用或无法使用任何网站或小部件而以任何方式承担责任。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "YOUR REPRESENTATIONS AND WARRANTIES",
                            BM: "PERWAKILAN DAN WARANTI ANDA",
                            CN: "您的陈述和保证"
                        },
                        description: {
                            EN: "
                                <p>29.1 You represent and warrant that:</p>
                                <ol type='i'>
                                    <li>you possess the legal capacity (and in the case of a minor, valid parent or legal guardian consent), right and ability to enter into these Terms of Service and to comply with its terms; and</li>
                                    <li>you will use the Services for lawful purposes only and in accordance with these Terms of Service and all applicable laws, rules, codes, directives, guidelines, policies and regulations.</li>
                                </ol>
                            ",
                            BM: "
                                <p>29.1 Anda menyatakan dan menjamin bahawa:</p>
                                <ol>
                                    <li>anda memiliki kapasiti undang-undang (dan dalam kes persetujuan ibu bapa yang sah atau penjaga yang sah), hak dan keupayaan untuk memasuki Syarat Perkhidmatan ini dan untuk mematuhi syaratnya; dan</li>
                                    <li>anda akan menggunakan Perkhidmatan untuk tujuan yang sah sahaja dan menurut Syarat Perkhidmatan ini dan semua undang-undang, peraturan, kod, arahan, garis panduan, dasar dan peraturan yang berkenaan.</li>
                                </ol>
                            ",
                            CN: "
                                <p>29.1 您声明并保证：</p>
                                <ol type='a'>
                                    <li>您拥有签署这些服务条款并遵守其条款的法律行为能力（在未成年人、有效父母或法定监护人同意的情况下）、权利和能力；和</li>
                                    <li>您将仅出于合法目的使用服务，并遵守这些服务条款和所有适用的法律、规则、准则、指令、指南、政策和法规</li>
                                </ol>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "FRAUDULENT OR SUSPICIOUS ACTIVITY",
                            BM: "AKTIVITI PENIPUAN ATAU MENCURIGIKAN",
                            CN: "欺诈或可疑活动"
                        },
                        description: {
                            EN: "
                                <p>30.1 If Nightcat Digital Solutions (JM0919865-V), in its sole discretion, believes that you may have engaged in any potentially fraudulent or suspicious activity and/or transactions, we may take various actions to protect Nightcat Digital Solutions (JM0919865-V), other Buyers or Sellers, other third parties or you from Reversals, Chargebacks, Claims, fees, fines, penalties and any other liability. The actions we may take include but are not limited to the following:</p>
                                <ol type='a'>
                                    <li>We may close, suspend, or limit your access to your Account or the Services, and/or suspend the processing of any transaction;</li>
                                    <li>We may suspend your eligibility for Nightcat Digital Solutions (JM0919865-V) Guarantee;</li>
                                    <li>We may hold, apply or transfer the funds in your Account as required by judgments and orders which affect you or your Account, including judgments and orders issued by a competent court or elsewhere and directed to Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>We may refuse to provide the Services to you now and in the future;</li>
                                    <li>We may hold your funds for a period of time reasonably needed to protect against the risk of liability to Nightcat Digital Solutions (JM0919865-V) or a third party, or if we believe that you may be engaging in potentially fraudulent or suspicious activity and/or transactions.</li>
                                </ol>
                                <p>For the purposes of this Section:</p>
                                <ul>
                                    <li><b>'Chargeback'</b> means a request that a Buyer files directly with his or her debit or credit card company  or debit or credit card issuing bank to invalidate a payment.</li>
                                    <li><b>'Claim'</b> means a challenge to a payment that a Buyer or Seller files directly with Nightcat Digital Solutions (JM0919865-V).</li>
                                    <li><b>'Reversal'</b> means the reversal of a payment by Nightcat Digital Solutions (JM0919865-V) because (a) it is invalidated by the sender's bank, (b) it was sent to you in error by Nightcat Digital Solutions (JM0919865-V), (c) the sender of the payment did not have authorization to send the payment (for example: the sender used a stolen credit card), (d) you received the payment for activities that violated these Terms of Service or any other Nightcat Digital Solutions (JM0919865-V) policy, or (e) Nightcat Digital Solutions (JM0919865-V) decided a Claim against you.</li>
                                </ul>
                            ",
                            BM: "
                                <p>30.1 Jika Nightcat Digital Solutions (JM0919865-V), mengikut budi bicara mutlaknya, percaya bahawa anda mungkin telah terlibat dalam sebarang aktiviti dan/atau transaksi yang berpotensi penipuan atau mencurigakan, kami mungkin mengambil pelbagai tindakan untuk melindungi Nightcat Digital Solutions (JM0919865-V), Pembeli atau Penjual lain, pihak ketiga lain atau anda daripada Pembalikan, Caj Balik , Tuntutan, yuran, denda, penalti dan sebarang liabiliti lain. Tindakan yang mungkin kami ambil termasuk tetapi tidak terhad kepada yang berikut:</p>
                                <ol type='a'>
                                    <li>Kami mungkin menutup, menggantung, atau mengehadkan akses anda kepada Akaun atau Perkhidmatan anda, dan/atau menggantung pemprosesan sebarang transaksi;</li>
                                    <li>Kami mungkin menggantung kelayakan anda untuk Jaminan Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>Kami mungkin memegang, memohon atau memindahkan dana dalam Akaun anda seperti yang dikehendaki oleh penghakiman dan perintah yang mempengaruhi anda atau Akaun anda, termasuk penghakiman dan perintah yang dikeluarkan oleh mahkamah yang berwibawa atau di tempat lain dan ditujukan kepada Nightcat Digital Solutions (JM0919865-V);</li>
                                    <li>Kami mungkin menolak untuk menyediakan Perkhidmatan kepada anda sekarang dan pada masa hadapan;</li>
                                    <li>Kami mungkin memegang dana anda untuk tempoh masa yang munasabah diperlukan untuk melindungi daripada risiko liabiliti kepada Nightcat Digital Solutions (JM0919865-V) atau pihak ketiga, atau jika kami percaya bahawa anda mungkin terlibat dalam aktiviti dan/atau transaksi yang berpotensi penipuan atau mencurigakan.</li>
                                </ol>
                                <p>Untuk tujuan Bahagian ini:</p>
                                <ul>
                                    <li><b>'Caj Balik'</b> bermaksud permintaan supaya Pembeli memfailkan terus dengan syarikat debit atau kad kreditnya atau bank pengeluar kad debit atau kredit untuk membatalkan pembayaran.</li>
                                    <li><b>'Tuntutan'</b> bermaksud cabaran kepada pembayaran yang difailkan oleh Pembeli atau Penjual terus dengan Nightcat Digital Solutions (JM0919865-V).</li>
                                    <li><b>'Pembalikan'</b> bermaksud pembalikan pembayaran oleh Nightcat Digital Solutions (JM0919865-V) kerana (a) ia tidak sah oleh bank pengirim, (b) ia telah dihantar kepada anda secara silap oleh Nightcat Digital Solutions (JM0919865-V), (c) pengirim pembayaran tidak mempunyai kebenaran untuk menghantar pembayaran (contohnya: pengirim menggunakan kad kredit yang dicuri), (d) anda menerima bayaran untuk aktiviti yang melanggar Syarat Perkhidmatan ini atau mana-mana dasar Nightcat Digital Solutions (JM0919865-V) yang lain, atau (e) Nightcat Digital Solutions (JM0919865-V) memutuskan Tuntutan terhadap anda.</li>
                                </ul>
                            ",
                            CN: "
                                <p>30.1 如果虾皮自行决定认为您可能参与了任何潜在的欺诈或可疑活动和/或交易，我们可能会采取各种行动来保护虾皮、其他买家或卖家、其他第三方或您免受撤销、退款、索赔、费用、罚款、罚金和任何其他责任。我们可能采取的行动包括但不限于以下内容：</p>
                                <ol type='a'>
                                    <li>我们可能会关闭、暂停或限制您访问您的账户或服务，和/或暂停任何交易的处理；</li>
                                    <li>我们可能会暂停您的 Nightcat Digital Solutions (JM0919865-V) Guarantee 资格；</li>
                                    <li>我们可能会根据影响您或您的账户的判决和命令的要求，持有、应用或转移您账户中的资金，包括由主管法院或其他地方发布并针对 Nightcat Digital Solutions (JM0919865-V) 的判决和命令；</li>
                                    <li>我们现在和将来可能会拒绝向您提供服务；</li>
                                    <li>我们可能会在合理需要的一段时间内持有您的资金，以防止 Nightcat Digital Solutions (JM0919865-V) 或第三方承担责任风险，或者如果我们认为您可能从事潜在的欺诈或可疑活动和/或交易。</li>
                                </ol>
                                <p>就本节而言：</p>
                                <ul>
                                    <li><b>“拒付”</b>是指买方直接向其借记卡或信用卡公司或借记卡或信用卡发卡行提交的请求，以取消付款。</li>
                                    <li><b>“索赔”</b>是指对买方或卖方直接向 Nightcat Digital Solutions (JM0919865-V) 提交的付款提出质疑。</li>
                                    <li><b>“撤销”</b>是指 Nightcat Digital Solutions (JM0919865-V) 撤销付款，因为 (a) 付款被发送方的银行无效，(b) 由 Nightcat Digital Solutions (JM0919865-V) 错误地发送给您，(c) 付款的发送方没有授权发送付款（例如：发件人使用了被盗的信用卡），(d) 您因违反这些服务条款或任何其他 Nightcat Digital Solutions (JM0919865-V) 政策的活动而收到付款，或 (e) Nightcat Digital Solutions (JM0919865-V) 决定向您提出索赔。</li>
                                </ul>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "INDEMNITY",
                            BM: "INDEMNITI",
                            CN: "赔偿"
                        },
                        description: {
                            EN: "
                                <p>31.1 You agree to indemnify, defend and hold harmless Nightcat Digital Solutions (JM0919865-V), and its shareholders, subsidiaries, affiliates, directors, officers, agents, co-branders or other partners, and employees (collectively, the 'Indemnified Parties') from and against any and all claims, actions, proceedings, and suits and all related liabilities, damages, settlements, penalties, fines, costs and expenses (including, without limitation, any other dispute resolution expenses) incurred by any Indemnified Party arising out of or relating to: (a) any transaction made on the Site, or any dispute in relation to such transaction (except where Nightcat Digital Solutions (JM0919865-V) or its Affiliates is the Seller in the transaction that the dispute relates to), (b) the Nightcat Digital Solutions (JM0919865-V) Guarantee, (c) the hosting, operation, management and/or administration of the Services by or on behalf of Nightcat Digital Solutions (JM0919865-V), (d) your violation or breach of any term of these Terms of Service or any policy or guidelines referenced herein, (e) your use or misuse of the Services, (f) your breach of any law or any rights of a third party, or (g) any Content uploaded by you.</p>
                            ",
                            BM: "
                                <p>31.1 Anda bersetuju untuk menanggung rugi, mempertahankan dan tidak memudaratkan Nightcat Digital Solutions (JM0919865-V), dan pemegang saham, anak syarikat, ahli gabungan, pengarah, pegawai, ejen, penjenama bersama atau rakan kongsi lain dan pekerjanya (secara kolektif, 'Pihak Tertanggung') daripada dan terhadap mana-mana dan semua tuntutan, tindakan, prosiding, dan guaman dan semua liabiliti, ganti rugi, penyelesaian, penalti, denda, kos dan perbelanjaan yang berkaitan (termasuk, tanpa had, apa-apa perbelanjaan penyelesaian pertikaian lain) yang ditanggung oleh mana-mana Pihak Yang Ditanggung Rugi yang timbul daripada atau berkaitan dengan: (a ) sebarang transaksi yang dibuat di Laman, atau sebarang pertikaian berhubung dengan transaksi tersebut (kecuali di mana Nightcat Digital Solutions (JM0919865-V) atau Rakan Gabungannya adalah Penjual dalam transaksi yang berkaitan dengan pertikaian itu), (b) Jaminan Nightcat Digital Solutions (JM0919865-V), (c) pengehosan, operasi , pengurusan dan/atau pentadbiran Perkhidmatan oleh atau bagi pihak Nightcat Digital Solutions (JM0919865-V),(d) pelanggaran atau pelanggaran anda terhadap mana-mana terma Syarat Perkhidmatan ini atau mana-mana dasar atau garis panduan yang dirujuk di sini, (e) penggunaan atau penyalahgunaan Perkhidmatan oleh anda, (f) pelanggaran anda terhadap mana-mana undang-undang atau mana-mana hak pihak ketiga, atau (g) ​​sebarang Kandungan yang dimuat naik oleh anda.</p>
                            ",
                            CN: "
                                <p>31.1 您同意就任何及所有任何受偿方因以下原因或与之相关而产生的索赔、诉讼、诉讼和诉讼以及所有相关责任、损害、和解、罚款、罚款、成本和费用（包括但不限于任何其他争议解决费用）： ) 在本网站上进行的任何交易，或与此类交易有关的任何争议（除非虾皮或其关联公司是与争议相关的交易中的卖方），(b) 虾皮保证，(c) 托管、运营由 Nightcat Digital Solutions (JM0919865-V) 或代表 Nightcat Digital Solutions (JM0919865-V) 管理和/或管理服务，(d) 您违反或违反本服务条款的任何条款或此处引用的任何政策或准则，(e) 您对服务的使用或滥用，(f) 您违反任何法律或第三方的任何权利， (g) 您上传的任何内容</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "SEVERABILITY",
                            BM: "KEBOLEHASINGAN",
                            CN: "可分割性"
                        },
                        description: {
                            EN: "
                                <p>32.1 If any provision of these Terms of Service shall be deemed unlawful, void, or for any reason unenforceable under the law of any jurisdiction, then that provision shall be deemed severable from these terms and conditions and shall not affect the validity and enforceability of any remaining provisions in such jurisdiction nor the validity and enforceability of the provision in question under the law of any other jurisdiction.</p>
                            ",
                            BM: "
                                <p>32.1 Jika mana-mana peruntukan Syarat Perkhidmatan ini dianggap menyalahi undang-undang, tidak sah, atau atas apa-apa sebab tidak boleh dikuatkuasakan di bawah undang-undang mana-mana bidang kuasa, maka peruntukan itu akan dianggap boleh dipisahkan daripada terma dan syarat ini dan tidak akan menjejaskan kesahihan dan kebolehkuatkuasaan mana-mana peruntukan yang tinggal dalam bidang kuasa sedemikian mahupun kesahan dan kebolehkuatkuasaan peruntukan yang dipersoalkan di bawah undang-undang mana-mana bidang kuasa lain.</p>
                            ",
                            CN: "
                                <p>32.1 如果本服务条款的任何条款被视为非法、无效或因任何司法管辖区的法律无法执行的任何原因，则该条款应被视为可与本条款和条件分开，并且不应影响任何条款的有效性和可执行性。该司法管辖区的剩余条款，或有关条款在任何其他司法管辖区的法律下的有效性和可执行性。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "GOVERNING LAW",
                            BM: "UNDANG-UNDANG YANG MENGAWAL",
                            CN: "适用法律"
                        },
                        description: {
                            EN: "
                                <p>33.1 These Terms of Service shall be governed by and construed in accordance with the laws of the Republic of Singapore without regard to its conflict of law rules. The United Nations Convention on Contracts for the International Sale of Goods and the Uniform Computer Information Transaction Act, to the extent applicable, are expressly disclaimed. Unless otherwise required by applicable laws, any dispute, controversy, claim or difference of any kind whatsoever shall arising out of or relating to these Terms of Service against or relating to Nightcat Digital Solutions (JM0919865-V) or any Indemnified Party under these Terms of Service shall be referred to and finally resolved by arbitration in Singapore in accordance with the Arbitration Rules of the Singapore International Arbitration Centre (“SIAC Rules”) for the time being in force, which rules are deemed to be incorporated by reference in this Section. There will be one (1) arbitrator and the language of the arbitration shall be English.</p>
                            ",
                            BM: "
                                <p>33.1 Syarat Perkhidmatan ini akan ditadbir oleh dan ditafsirkan mengikut undang-undang Republik Singapura tanpa mengambil kira percanggahan peraturan undang-undangnya. Konvensyen Pertubuhan Bangsa-Bangsa Bersatu mengenai Kontrak untuk Jualan Barangan Antarabangsa dan Akta Transaksi Maklumat Komputer Seragam, setakat yang berkenaan, ditolak dengan jelas. Melainkan sebaliknya dikehendaki oleh undang-undang yang terpakai, sebarang pertikaian, kontroversi, tuntutan atau perbezaan dalam apa jua bentuk sekalipun akan timbul daripada atau berkaitan dengan Syarat Perkhidmatan ini terhadap atau berkaitan dengan Nightcat Digital Solutions (JM0919865-V) atau mana-mana Pihak Yang Ditanggung Rugi di bawah Syarat Perkhidmatan ini hendaklah dirujuk dan akhirnya diselesaikan melalui timbang tara di Singapura menurut Peraturan Timbang Tara Pusat Timbang Tara Antarabangsa Singapura (“Peraturan SIAC”) yang sedang berkuat kuasa, peraturan mana yang dianggap digabungkan dengan rujukan dalam Seksyen ini. Akan ada satu (1) penimbang tara dan bahasa timbang tara hendaklah bahasa Inggeris.</p>
                            ",
                            CN: "
                                <p>33.1 本服务条款受新加坡共和国法律管辖并据其解释，不考虑其冲突法规则。《联合国国际货物销售合同公约》和《统一计算机信息交易法》在适用的范围内被明确拒绝。除非适用法律另有规定，因本服务条款引起的或与之相关的针对虾皮或本服务条款项下的任何受偿方的或与之相关的任何争议、争议、索赔或分歧均应提交并最终提交根据当时有效的新加坡国际仲裁中心仲裁规则（“SIAC 规则”）在新加坡通过仲裁解决，哪些规则被视为通过引用并入本节。将有一 (1) 名仲裁员，仲裁语言为英语。</p>
                            "
                        }
                    },
                    {
                        title: {
                            EN: "GENERAL PROVISIONS",
                            BM: "PERUNTUKAN AM",
                            CN: "一般规定"
                        },
                        description: {
                            EN: "
                                <p>34.1 Nightcat Digital Solutions (JM0919865-V) reserves all rights not expressly granted herein.</p>
                                <p>34.2 Nightcat Digital Solutions (JM0919865-V) may modify these Terms of Service at any time by posting the revised Terms of Service on this Site. Your continued use of this Site after such changes have been posted shall constitute your acceptance of such revised Terms of Service.</p>
                                <p>34.3 You may not assign, sublicense or transfer any rights granted to you hereunder or subcontract any of your obligations.</p>
                                <p>34.4 Nothing in these Terms of Service shall constitute a partnership, joint venture or principal-agent relationship between you and Nightcat Digital Solutions (JM0919865-V), nor does it authorise you to incur any costs or liabilities on Nightcat Digital Solutions (JM0919865-V)’s behalf.</p>
                                <p>34.5 The failure of Nightcat Digital Solutions (JM0919865-V) at any time or times to require performance of any provision hereof shall in no manner affect its right at a later time to enforce the same unless the same is waived in writing.</p>
                                <p>34.6 These Terms of Service are solely for your and our benefit and are not for the benefit of any other person or entity, except for Nightcat Digital Solutions (JM0919865-V)'s affiliates and subsidiaries (and each of Nightcat Digital Solutions (JM0919865-V)'s and its affiliates' and subsidiaries' respective successors and assigns).</p>
                                <p>34.7 The terms set forth in these Terms of Service and any agreements and policies included or referred to in these Terms of Service constitute the entire agreement and understanding of the parties with respect to the Services and the Site and supersede any previous agreement or understanding between the parties in relation to such subject matter. The parties also hereby exclude all implied terms in fact. In entering into the agreement formed by these Terms of Service, the parties have not relied on any statement, representation, warranty, understanding, undertaking, promise or assurance of any person other than as expressly set out in these Terms of Service. Each party irrevocably and unconditionally waives all claims, rights and remedies which but for this Section it might otherwise have had in relation to any of the foregoing. These Terms of Service may not be contradicted, explained or supplemented by evidence of any prior agreement, any contemporaneous oral agreement or any consistent additional terms.</p>
                                <p>34.8 You agree to comply with all applicable laws, statutes, regulations and codes relating to anti-bribery and corruption including without limitation the UK Bribery Act, the US Foreign Corrupt Practices Act, the Singapore Prevention of Corruption Act and the Malaysian Anti-Corruption Commission Act and confirm that you have and shall have in place all policies and procedures needed to ensure compliance with such requirements.</p>
                                <p>34.9 If you have any questions or concerns about these Terms of Service or any issues raised in these Terms of Service or on the Site, please contacts us at: help@nightcatdigitalsolutions.com.</p>
                                <p>LEGAL NOTICES: Please send all legal notices to <a href='mailto:legal@nightcatdigitalsolutions.com'>legal@nightcatdigitalsolutions.com</a> and Attention it to the “General Counsel”.</p>
                                <p><b>I HAVE READ THIS AGREEMENT AND AGREE TO ALL OF THE PROVISIONS CONTAINED ABOVE AND ANY REVISION THE SAME HEREAFTER. BY CLICKING THE “SIGN UP ” OR “CONNECT WITH FACEBOOK” BUTTON DURING REGISTRATION, I UNDERSTAND THAT I AM CREATING A DIGITAL SIGNATURE, WHICH I INTEND TO HAVE THE SAME FORCE AND EFFECT AS IF I HAD SIGNED MY NAME MANUALLY.</b></p>
                            ",
                            BM: "
                                <p>34.1 Nightcat Digital Solutions (JM0919865-V) mempunyai semua hak yang tidak diberikan secara nyata di sini.</p>
                                <p>34.2 Nightcat Digital Solutions (JM0919865-V) boleh mengubah suai Syarat Perkhidmatan ini pada bila-bila masa dengan menyiarkan Syarat Perkhidmatan yang disemak di Laman ini. Penggunaan berterusan anda terhadap Laman ini selepas perubahan tersebut telah disiarkan akan membentuk penerimaan anda terhadap Syarat Perkhidmatan yang telah disemak semula.</p>
                                <p>34.3 Anda tidak boleh menyerahkan, mensublesenkan atau memindahkan sebarang hak yang diberikan kepada anda di bawah ini atau mensubkontrakkan mana-mana kewajipan anda.</p>
                                <p>34.4 Tiada apa-apa dalam Syarat Perkhidmatan ini boleh membentuk perkongsian, usaha sama atau perhubungan ejen prinsipal antara anda dan Nightcat Digital Solutions (JM0919865-V), dan ia juga tidak membenarkan anda untuk menanggung sebarang kos atau liabiliti bagi pihak Nightcat Digital Solutions (JM0919865-V).</p>
                                <p>34.5 Kegagalan Nightcat Digital Solutions (JM0919865-V) pada bila-bila masa atau masa untuk menghendaki pelaksanaan mana-mana peruntukan di sini tidak akan menjejaskan haknya di kemudian hari untuk menguatkuasakan perkara yang sama melainkan perkara yang sama diketepikan secara bertulis.</p>
                                <p>34.6 Syarat Perkhidmatan ini adalah semata-mata untuk faedah anda dan kami dan bukan untuk faedah mana-mana orang atau entiti lain, kecuali untuk ahli gabungan dan anak syarikat Nightcat Digital Solutions (JM0919865-V) (dan setiap pengganti dan penerima serah hak milik Nightcat Digital Solutions (JM0919865-V) dan sekutunya dan anak syarikat).</p>
                                <p>34.7 Terma yang dinyatakan dalam Syarat Perkhidmatan ini dan sebarang perjanjian dan dasar yang disertakan atau dirujuk dalam Syarat Perkhidmatan ini membentuk keseluruhan perjanjian dan pemahaman pihak berkenaan dengan Perkhidmatan dan Tapak dan menggantikan sebarang perjanjian atau persefahaman sebelumnya antara pihak berhubung dengan perkara tersebut. Pihak-pihak juga dengan ini mengecualikan semua terma tersirat sebenarnya. Dalam memeterai perjanjian yang dibentuk oleh Syarat Perkhidmatan ini, pihak-pihak tidak bergantung pada sebarang kenyataan, representasi, waranti, pemahaman, aku janji, janji atau jaminan mana-mana orang selain daripada yang dinyatakan secara jelas dalam Syarat Perkhidmatan ini. Setiap pihak secara tidak boleh ditarik balik dan tanpa syarat mengetepikan semua tuntutan, hak dan remedi yang tetapi bagi Seksyen ini ia mungkin ada berhubung dengan mana-mana perkara di atas.</p>
                                <p>34.8 Anda bersetuju untuk mematuhi semua undang-undang, statut, peraturan dan kod yang berkaitan dengan anti-rasuah dan rasuah termasuk tanpa had Akta Rasuah UK, Akta Amalan Rasuah Asing AS, Akta Pencegahan Rasuah Singapura dan Suruhanjaya Pencegahan Rasuah Malaysia Bertindak dan sahkan bahawa anda telah dan hendaklah mempunyai semua dasar dan prosedur yang diperlukan untuk memastikan pematuhan dengan keperluan tersebut.</p>
                                <p>34.9 Jika anda mempunyai sebarang soalan atau kebimbangan mengenai Syarat Perkhidmatan ini atau sebarang isu yang dibangkitkan dalam Syarat Perkhidmatan ini atau di Tapak, sila hubungi kami di: <a href='mailto:help@nightcatdigitalsolutions.com'>help@nightcatdigitalsolutions.com</a> .</p>
                                <p>NOTIS UNDANG-UNDANG: Sila hantar semua notis undang-undang ke <a href='mailto:legal@nightcatdigitalsolutions.com'>legal@nightcatdigitalsolutions.com</a> dan Perhatian kepada 'Peguam Am'.</p>
                                <p>SAYA TELAH MEMBACA PERJANJIAN INI DAN BERSETUJU KEPADA SEMUA PERUNTUKAN YANG TERKANDUNG DI ATAS DAN SEBARANG SEMAKAN YANG SAMA DI SELEPAS INI. DENGAN MENGKLIK BUTTON “DAFTAR” ATAU “HUBUNGKAN DENGAN FACEBOOK” SEMASA PENDAFTARAN, SAYA FAHAM BAHAWA SAYA SEDANG MENCIPTA TANDATANGAN DIGITAL, YANG SAYA BERMAKSUD UNTUK MEMPUNYAI KEKUATAN DAN KESAN YANG SAMA SEPERTI SAYA TELAH MENANDATANGANI NAMA SAYA SECARA MANUAL.</p>
                            ",
                            CN: "
                                <p>34.1 虾皮保留此处未明确授予的所有权利。</p>
                                <p>34.2 虾皮可以随时通过在本网站上发布修订后的服务条款来修改这些服务条款。您在发布此类更改后继续使用本网站，即表示您接受此类修订后的服务条款。</p>
                                <p>34.3 您不得转让、再许可或转让本协议项下授予您的任何权利或分包您的任何义务。</p>
                                <p>34.4 本服务条款中的任何内容均不构成您与虾皮之间的合伙、合资或委托代理关系，也不授权您代表虾皮承担任何费用或责任。</p>
                                <p>34.5 虾皮在任何时间或时间未能要求履行本协议的任何规定，绝不会影响其在以后执行相同规定的权利，除非以书面形式放弃该规定。</p>
                                <p>34.6 本服务条款仅为您和我们的利益而设，不为任何其他人或实体的利益服务，虾皮的关联公司和子公司（以及虾皮及其关联公司和子公司各自的继承人和受让人）除外。</p>
                                <p>34.7 本服务条款中规定的条款以及本服务条款中包含或提及的任何协议和政策构成双方就服务和网站达成的完整协议和理解，并取代双方之前的任何协议或理解。与此类标的有关的各方。双方还特此排除所有事实上的默示条款。在订立本服务条款所形成的协议时，双方未依赖本服务条款明确规定以外的任何人的任何声明、陈述、保证、理解、承诺、承诺或保证。每一方不可撤销地和无条件地放弃所有索赔、权利和补救措施，如果没有本节，它可能有与上述任何一项有关的其他索赔、权利和补救措施。</p>
                                <p>34.8 您同意遵守与反贿赂和腐败有关的所有适用法律、法规、法规和守则，包括但不限于英国反贿赂法、美国反海外腐败法、新加坡预防腐败法和马来西亚反腐败委员会采取行动并确认您已经并且应该拥有确保遵守此类要求所需的所有政策和程序。</p>
                                <p>34.9 如果您对这些服务条款或在这些服务条款或网站上提出的任何问题有任何疑问或疑虑，请通过以下方式与我们联系：  <a href='mailto:help@nightcatdigitalsolutions.com'>help@nightcatdigitalsolutions.com</a>。</p>
                                <p>法律通知：请将所有法律通知发送至 <a href='mailto:legal@nightcatdigitalsolutions.com'>legal@nightcatdigitalsolutions.com</a>， 并将其发送给“总法律顾问”。</p>
                                <p><b>我已阅读本协议，并同意上述所有条款以及此后的任何修订。通过在注册过程中单击“注册”或“与 FACEBOOK 连接”按钮，我明白我正在创建一个数字签名，我希望它具有与我手动签署我的名字相同的力量和效果。</b></p>
                            "
                        }
                    },
                ]
            }
        ]
        return

    render: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
            <div class='container mt-3 pb-2 mb-5'>
                <div class='accordion' id='policyBody'></div>
                <p class='p-4 m-0 text-center'>
                    <b><span id='lastUpdate-description'></span></b>
                    <span class='pl-2' id='lastUpdate-content'></span>
                </p>
            </div>
        "

    setPolicyTitle: (title) ->
        policy = @policies.filter((policy) => policy.id is title)
        return policy[0].title[@currentLang]

    setPolicyLastUpdateDescription: ->
        return @lastUpdateText[@currentLang]

    setPolicyLastUpdateContent: (title) ->
        policy = @policies.filter((policy) => policy.id is title)
        return policy[0].lastUpdate[@currentLang]

    generateAccordions: (title) ->
        html = ""
        policy = @policies.filter((policy) => policy.id is title)
        policy[0].content.forEach((rule, i) => 
            id = ((rule.title[@currentLang]).replace(/[\s`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, ""))
            html += "
                <div class='card z-depth-0 bordered'>
                    <div class='card-header p-0 m-0 policy__header w-100' id='#{id.toLowerCase()}-heading'>
                        <h5 class='mb-0'>
                            <button class='btn btn-link policy__btn w-100 text-left' type='button' data-toggle='collapse' data-target='##{id.toLowerCase()}-body'
                                aria-expanded='true' aria-controls='collapseOne'>
                                <i class='fas fa-caret-right'></i>
                                #{rule.title[@currentLang]}
                            </button>
                        </h5>
                    </div>
                    <div id='#{id.toLowerCase()}-body' class='collapse' aria-labelledby='#{id.toLowerCase()}-heading'
                        data-parent='#policyBody'>
                        <div class='card-body text-justify'>
                            #{rule.description[@currentLang]}
                        </div>
                    </div>
                </div>
            "
        )
        return html

    
