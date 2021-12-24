import $ from "jquery"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class Policy
    constructor: ->
        @sectionTitleComponent = {
            title: "",
            subtitle: ""
            background: "light"
        }
        @policies = [
            {
                id: "#privaryPolicy"
                title: "Privacy Policy",
                content: [
                    {
                        title: "introduction",
                        description: "
                            <p>1.1 Welcome to the Nightcat platform run by Nightcat Digital Solutions (JM0919865-V) and its affiliates and affiliates (individually and collectively, 'Nightcat', 'we', 'us' or 'our'). Nightcat takes its responsibilities under applicable privacy laws and regulations ('Privacy Laws') seriously and is committed to respecting the privacy rights and concerns of all Users of our Nightcat website and mobile application (the 'Platform') (we refer to the Platform and the services we provide as described on our Platform collectively as the 'Services'). Users refers to a user who registers for an account with us for use of the Services, including both buyers and sellers (individually and collectively, “Users”, “you” or “your” We recognize the importance of the personal data you have entrusted to us and believe that it is our responsibility to properly manage, protect and process your personal data. This Privacy Policy (“Privacy Policy” or “Policy”) is designed to assist you in understanding how we collect, use, disclose and/or process the personal data you have provided to us and/or we possess about you, whether now or in the future, as well as to assist you in making an informed decision before providing us with any of your personal data. Please read this Privacy Policy carefully. If you have any questions regarding this information or our privacy practices, please see the section entitled 'Questions, Concerns or Complaints? Contact Us' at the end of this Privacy Policy.</p>
                            <p>1.2 'Personal Data' or 'personal data' means data, whether true or not, about an individual who can be identified from that data, or from that data and other information to which an organisation has or is likely to have access. Common examples of personal data could include name, identification number and contact information.</p>
                            <p>1.3 By using the Services, registering for an account with us, visiting our Platfrom, or accessing the Services, you acknowledge and agree that you accept the practices, requirements, and/or policies outlined in this Privacy Policy, and you hereby consent to us collecting, using, disclosing and/or processing your personal data as described herein. IF YOU DO NOT CONSENT TO THE PROCESSING OF YOUR PERSONAL DATA AS DESCRIBED IN THIS PRIVACY POLICY, PLEASE DO NOT USE OUR SERVICES OR ACCESS OUR PLATFORM. If we change our Privacy Policy, we will notify you including by posting those changes or the amended Privacy Policy on our Platform. We reserve the right to amend this Privacy Policy at any time. To the fullest extent permissible under applicable law, your continued use of the Services or Platform, including placing of any orders, shall constitute your acknowledgement and acceptance of the changes made to this Privacy Policy.</p>
                            <p>1.4 This Policy applies in conjunction with other notices, contractual clauses, consent clauses that apply in relation to the collection, storage, use, disclosure and/or processing of your personal data by us and is not intended to override those notices or clauses unless we state expressly otherwise.</p>
                            <p>1.5 This Policy applies to both buyers and sellers who use the Services except where expressly stated otherwise.</p>
                        "
                    },
                    {
                        title: "When Will NightCat Collect Personal Data?"
                        description: "
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
                        "
                    },
                    {
                        title: "What Personal Data Will NightCat Collect?"
                        description: "
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
                    },
                    {
                        title: "Collection Of Other Data",
                        description: "
                            <p>4.1 As with most websites and mobile applications, your device sends information which may include data about you that gets logged by a web server when you browse our Platform. This typically includes without limitation your device’s Internet Protocol (IP) address, computer/mobile device operating system and browser type, type of mobile device, the characteristics of the mobile device, the unique device identifier (UDID) or mobile equipment identifier (MEID) for your mobile device, the address of a referring web site (if any), the pages you visit on our website and mobile applications and the times of visit, and sometimes a 'cookie' (which can be disabled using your browser preferences) to help the site remember your last visit. If you are logged in, this information is associated with your personal account. The information is also included in anonymous statistics to allow us to understand how visitors use our site.</p>
                            <p>4.2 Our mobile applications may collect precise information about the location of your mobile device using technologies such as GPS, Wi-Fi, etc. We collect, use, disclose and/or process this information for one or more Purposes including, without limitation, location-based services that you request or to deliver relevant content to you based on your location or to allow you to share your location to other Users as part of the services under our mobile applications. For most mobile devices, you are able to withdraw your permission for us to acquire this information on your location through your device settings. If you have questions about how to disable your mobile device's location services, please contact your mobile device service provider or the device manufacturer.</p>
                            <p>4.3 As when you view pages on our website or mobile application, when you watch content and advertising and access other software on our Platform or through the Services, most of the same information is sent to us (including, without limitation, IP Address, operating system, etc.); but, instead of page views, your device sends us information on the content, advertisement viewed and/or software installed by the Services and the Platform and time.</p>
                        "
                    },
                    {
                        title: "Cookies",
                        description: "
                            <p>5.1 We or our authorised service providers and advertising partners may from time to time use 'cookies' or other features to allow us or third parties to collect or share information that in connection with your use of our Services or Platform. These features help us improve our Platform and the Services we offer, help us offer new services and features, and/or enable us and out advertising partners serve more relevant content to you, including through remarketing. “Cookies” are identifiers that are stored on your computer or device that record data about your computer or device and how and when the Services or website are used or visited, by how many people and other activity within our Platform. We may link cookie information to personal data. Cookies also link to information regarding what items you have selected for purchase and web pages you have viewed. This information is used to keep track of your shopping cart, to deliver content specific to your interests, to enable our third party advertising partners to serve advertisements o sites across the internet and to conduct data analysis and to monitor usage of the Services.</p>
                            <p>5.2 You may refuse the use of cookies by selecting the appropriate settings on your browser or device. However, please note that if you do this you may not be able to use the full functionality of our Site or the Services.</p>
                        "
                    },
                    {
                        title: "How Do We Use The Information You Provide Us?",
                        description: "
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
                        "
                    },
                    {
                        title: " How Does NightCat Protect And Retain Customer Information?",
                        description: "
                            <p>7.1 We implement a variety of security measures and strive to ensure the security of your personal data on our systems. User personal data is contained behind secured networks and is only accessible by a limited number of employees who have special access rights to such systems. However, there can inevitably be no guarantee of absolute security.</p>
                            <p>7.2 We will retain personal data in accordance with the Privacy Laws and/or other applicable laws. That is, we will destroy or anonymize your personal data as soon as it is reasonable to assume that (i) the purpose for which that personal data was collected is no longer being served by the retention of such personal data; and (ii) retention is no longer necessary for any legal or business purposes. If you cease using the Site, or your permission to use the Site and/or the Services is terminated or withdrawn, we may continue storing, using and/or disclosing your personal data in accordance with this Privacy Policy and our obligations under the Privacy Laws. Subject to applicable law, we may securely dispose of your personal data without prior notice to you.</p>
                        "
                    },
                    {
                        title: "Does NightCat Disclose The Information It Collects From Its Visitors To Outside Parties?",
                        description: "
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
                        
                        "
                    },
                    {
                        title: "Information On Children",
                        description: "
                            <p>9.1 The Services are not intended for children under the age of 13. We do not knowingly collect or maintain any personal data or non-personally-identifiable information from anyone under the age of 13 nor is any part of our Site or other Services directed to children under the age of 13. As a parent or legal guardian, please do not allow such children under your care to submit personal data to Nightcat. In the event that personal data of a child under the age of 13 in your care is disclosed to Nightcat, you hereby consent to the processing of the child’s personal data and accept and agree to be bound by this Policy on behalf of such child. We will close any accounts used exclusively by such children and will remove and/or delete any personal data we believe was submitted without parental consent by any child under the age of 13.</p>
                        "
                    },
                    {
                        title: "Information Collected By Third Parties",
                        description: "
                            <p>10.1 Our Site uses Google Analytics, a web analytics service provided by Google, Inc. ('Google'). Google Analytics uses cookies, which are text files placed on your computer, to help the website analyse how Users use the Site. The information generated by the cookie about your use of the website (including your IP address) will be transmitted to and stored by Google on servers in the United States. Google will use this information for the purpose of evaluating your use of the website, compiling reports on website activity for website operators and providing other services relating to website activity and Internet usage. Google may also transfer this information to third parties where required to do so by law, or where such third parties process the information on Google's behalf. Google will not associate your IP address with any other data held by Google.</p>
                            <p>10.2 We, and third parties, may from time to time make software applications downloads available for your use on or through the Services. These applications may separately access, and allow a third party to view, your identifiable information, such as your name, your user ID, your computer's IP Address or other information such as any cookies that you may previously have installed or that were installed for you by a third party software application or website. Additionally, these applications may ask you to provide additional information directly to third parties. Third party products or services provided through these applications are not owned or controlled by Nightcat. You are encouraged to read the terms and other policies published by such third parties on their websites or otherwise.</p>
                        "
                    },
                    {
                        title: " Disclaimer Regarding Security And Third Party Sites",
                        description: "
                            <p>11.1 WE DO NOT GUARANTEE THE SECURITY OF PERSONAL DATA AND/OR OTHER INFORMATION THAT YOU PROVIDE ON THIRD PARTY SITES. We do implement a variety of security measures to maintain the safety of your personal data that is in our possession or under our control. Your personal data is contained behind secured networks and is only accessible by a limited number of persons who have special access rights to such systems, and are required to keep the personal data confidential. When you place orders or access your personal data, we offer the use of a secure server. All personal data or sensitive information you supply is encrypted into our databases to be only accessed as stated above.</p>
                            <p>11.2 In an attempt to provide you with increased value, we may choose various third party websites to link to, and frame within, the Site. We may also participate in co-branding and other relationships to offer e-commerce and other services and features to our visitors. These linked sites have separate and independent privacy policies as well as security arrangements. Even if the third party is affiliated with us, we have no control over these linked sites, each of which has separate privacy and data collection practices independent of us. Data collected by our co-brand partners or third party web sites (even if offered on or through our Site) may not be received by us.</p>
                            <p>11.3 We therefore have no responsibility or liability for the content, security arrangements (or lack thereof) and activities of these linked sites. These linked sites are only for your convenience and you therefore access them at your own risk. Nonetheless, we seek to protect the integrity of our Site and the links placed upon each of them and therefore welcome any feedback about these linked sites (including, without limitation, if a specific link does not work).</p>
                        "
                    },
                    {
                        title: "Will NightCat Transfer Your Information Overseas?",
                        description: "
                            <p>12.1 Your personal data and/or information may be transferred to, stored or processed outside of your country. In most cases, your personal data will be processed in Singapore, where our servers are located. Nightcat will only transfer your information overseas in accordance with Privacy Laws.</p>
                        "
                    },
                    {
                        title: "How Can You Withdraw Consent, Request Access To Or Correct Information You Have Provided To Us?",
                        description: "
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
                        "
                    },
                    {
                        title: "Question, Concerns Or Complaints? Contact Us",
                        description: "
                            <p>14.1 If you have any questions or concerns about our privacy practices or your dealings with the Services, please do not hesitate to contact: help@support.shopee.com.my</p>
                            <p>14.2 If you have any complaint or grievance regarding how we are handling your personal data or about how we are complying with Privacy Laws, we welcome you to contact us with your complaint or grievance.</p>
                            <p>
                                Please contact us through email with your complaint or grievance:<br>
                                E-mail: dpo.my@shopee.com and Attention it to the 'Personal Data Protection Officer'.<br>
                                Please send all legal notices to legal.my@shopee.com and Attention it to the 'General Counsel'.
                            </p>
                            <p>14.3 Where it is an email or a letter through which you are submitting a complaint, your indication at the subject header that it is a Privacy Law complaint would assist us in attending to your complaint speedily by passing it on to the relevant staff in our organisation to handle. For example, you could insert the subject header as “Privacy Complaint”.</p>
                            <p>We will certainly strive to deal with any complaint or grievance that you may have fairly and as soon as possible.</p>
                        "
                    },
                    {
                        title: "Terms And Conditions",
                        description: "
                            <p>Please also read the Terms of Service establishing the use, disclaimers, and limitations of liability governing the use of the Site and the Services and other related policies.</p>
                        "
                    }
                ]
            },
            {
                id: "#returnRefund"
                title: "Return & Refund",
                content: [
                    {
                        title: "Application for Returns/Refunds",
                        description: "
                            <p>Subject to the terms and conditions in this Refunds and Return Policy and the Terms of Service, Buyer may apply for return of the purchased items (“Item”) and/or refund prior to the expiry of the Nightcat Guarantee Period as stated in the Terms of Service.</p>
                            <p>Nightcat Guarantee is a service provided by Nightcat, on User’s request, to assist Users in dealing with certain conflicts which may arise during the course of a transaction. Users may communicate with each other privately to resolve their differences or approach their relevant local authorities to assist them in overcoming any dispute prior, during or after using Nightcat Guarantee.</p>
                        "
                    },
                    {
                        title: "Application for the Return of an Item",
                        description: "
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
                        "
                    },
                    {
                        title: "Rights of Sellers",
                        description: "
                            <p>For the purpose of this Refund and Return Policy</p>
                            <p>When Nightcat receives an application from Buyer for the return of the Item and/or refund, Nightcat will notify Seller in writing. Seller may respond to Buyer’s application according to the steps provided by Nightcat in the written notification. Seller must respond within the time-frame stipulated in the written notification (the “Stipulated Period”). Should Nightcat not hear from Seller within the Stipulated Period, Nightcat will assume that Seller has no response to Buyer’s application and will proceed to assess Buyer’s application without further notice to Seller. Nightcat will review each Seller’s response on a case-by-case basis and, in its sole discretion, determine whether Buyer’s application may be successful against the circumstances stated by Seller.</p>
                        "
                    },
                    {
                        title: "Condition of Returning Item",
                        description: "
                            <p>To enjoy a hassle-free experience when returning the Item, Buyer should ensure that the Item, including any complimentary items such as accessories that come with the Item, must be returned to Seller in the condition received by Buyer on delivery. We will recommend Buyer to take a photo of the Item upon receipt.</p>
                        "
                    },
                    {
                        title: " Liability of Product Return Shipping Fee",
                        description: "
                            <ol>
                                <li>In the scenario of an unforeseen error from the seller's end (i.e - damaged, faulty or wrong product delivered to the buyer), the seller will bear buyer's return shipping fee.</li>
                                <li>In the scenario of the buyer's change of mind, buyer shall get seller's consent prior to the return request and buyer will bear the return shipping fee.</li>
                                <li>In the scenario where both seller-buyer disputing the party liable for the return shipping fee, Nightcat at its sole discretion will determine the party liable for the return shipping fee.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Refunds",
                        description: "
                            <p>Buyer will only be refunded after Nightcat has received the confirmation from Seller that Seller has received the returned Item. In the event where Nightcat does not hear from Seller within a specified time, Nightcat will be at liberty to refund the applicable sum to Buyer without further notice to Seller. For more information on Seller’s response time limits, please click this link. The refund will be made to Buyer’s credit/debit card or designated bank account, whichever is applicable.</p>
                        "
                    },
                    {
                        title: "Communication Between Buyer and Seller",
                        description: "
                            <p>Nightcat encourages Users to communicate with each other in the event where problem arises in a transaction. As Nightcat is a platform for Users to conduct trading, Buyer should contact Seller directly for any issue relating to the Item purchased.</p>
                        "
                    }
                ]
            },
            {
                id: "#shippingPolicy"
                title: "Shipping Policy",
                content: [
                    {
                        title: "Shipping Policy",
                        description: "
                            <ol>
                                <li>NIGHTCAT DIGITAL SOLUTIONS can only send orders to street addresses in Malaysia. We do not deliver to P.O. Box addresses.</li>
                                <li>We are unable to ship to international addresses at this moment.</li>
                                <li>At the time of delivery, you will be required to validate the receipt of the products by providing your signature to the delivery courier.</li>
                                <li>By signing, you agree that you have inspected the packing of the parcel and have ensured that the seal is not damaged.</li>
                                <li>Should the seal be broken, please check the contents of the parcel and you may refuse to sign for the parcel.</li>
                                <li>If you are not at home to receive your purchased order, please log in to your account or the courier website to track the status of your shipment.</li>
                                <li>Should the order be unable to be delivered to you successfully after 2 attempts (or any stipulated number of attempts by the appointed logistics provider) or you do not pick up your order at a nearby location as stated by the courier, the order may be forfeited and we will not refund you any amount that you have spent on your order.</li>
                                <li>We deliver all orders using our standard packaging materials. We do not provide any special packaging at this moment.</li>
                                <li>We are only able to deliver to one address per order. If you would like to deliver to multiple addresses, please place each order separately for each unique address.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Shipping Charges",
                        description: "
                            <ol>
                                <li>NIGHTCAT DIGITAL SOLUTIONS's delivery will only be limited to local delivery only.</li>
                                <li>All NIGHTCAT DIGITAL SOLUTIONS's delivery will only be available for any order below 30KG (weight or volumetric, whichever greater) only.</li>
                                <li>NIGHTCAT DIGITAL SOLUTIONS charges a standard shipping & handling fee of RM6.50 (Within West Malaysia), RM10.81 (Within Sabah/Labuan), and RM10.09 (Within Sarawak) for the first 5KG on all purchases.</li>
                                <li>Every subsequent KG following the first 5 will be charged a standard rate which subjects to our delivery rate card based on the delivery address.</li>
                                <li>For all (and only) West Malaysia purchases which has a checkout value above RM60.00 will get to enjoy our promotion of 'Free Shipping' for the first 5KG of their purchases.<br>
                                * Customer may opt to pay a higher transaction fee should you desire express delivery options or delivery of items exceeding certain designated dimensions or weight. At the moment, express delivery is not available.</li>
                                <li>These conditions are subject to change by the management.</li>
                                <li>There will be STRICTLY NO REFUNDS for any shipping & handling charges.</li>
                                <li>We strive to deliver your purchased products within the shortest time possible. All orders are processed as soon as the transaction is confirmed. All orders are dispatched and delivered by our designated courier from Monday to Friday, excluding weekends and public holidays. (There are possibilities that the courier delivers during weekends, they will contact you before arrival).</li>
                                <li>There may be promotional offerings for free delivery from time to time so please check in often.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Standard Delivery Lead Time",
                        description: "
                            <ol>
                                <li>Confirmed orders will be shipped out from our warehouse within 2 - 5 business day(s) if they are placed before 12:00 pm, Monday to Friday, excluding public holidays.</li>
                                <li>Aside from public holidays, orders placed on Friday after 12:00 pm and over the weekend will be processed on the following Monday and shipped out from our warehouse within 1 - 3 business day(s）</li>
                                <li>Delivery ETA (Expected Time of Arrival) are as follows:</li>
                                <li>    
                                    <ul>
                                        <li>Peninsular Malaysia: 2 – 5 working days for your order to arrive.</li>
                                        <li>Sabah / Sarawak: 5 – 8 working days for your order to arrive.</li>
                                    </ul>
                                </li>
                                <li>Delivery to rural or remote areas may require an additional of 2 – 3 working days.</li>
                            </ol>
                        "
                    },
                    {
                        title: " Express Delivery (Currently Not Available)",
                        description: "
                            <ol>
                                <li>Note: There will be NO Express Delivery option for any order volumetric weight MORE than 2500 mm3 or 30KG.<br>Volumetric Weight: A cubic millimeter (mm3) = cm3 = Length + (plus) Width + (plus) Depth</li>
                                <li>
                                    For all express deliveries NIGHTCAT DIGITAL SOLUTIONS charges a fixed rate of:<br>
                                    <ol type='a'>
                                        <li>Volumetric weight below of 1200 mm3 & 5KG (or less) in actual weight = RM12/li>
                                        <li>Volumetric weight below of 1200 mm3 & 10KG (or less) in actual weight = RM16</li>
                                        <li>Volumetric weight below of 1500 mm3 & 15KG (or less) in actual weight = RM20</li>
                                        <li>Volumetric weight below of 1500 mm3 & 20KG (or less) in actual weight = RM24</li>
                                        <li>Volumetric weight below of 1800 mm3 & 25KG (or less) in actual weight = RM30</li>
                                        <li>Volumetric weight below of 2500 mm3 & 30KG (or less) in actual weight = RM38</li>
                                    </ol>
                                </li>
                                <li>For all (and only) West Malaysia purchases which has a checkout value above RM50.00 will get to enjoy our promotion of 'Free Express Delivery' for the parcel with volumetric weight below 1200 mm3 & 5KG (or less) in the actual weight of their purchases.</li>
                                <li>At this moment our express delivery service will only cater to addresses within the Klang Valley area.</li>
                                <li>For any orders placed before 12:00pm, you will receive the items within the same day.</li>
                                <li>For any orders placed after the cut off time of 12:00 pm, you will receive the item by the next working day.</li>
                                <li>The expected delivery time will range from 2:30pm to 8:00pm, Monday – Friday, excluding public holidays. 8. If an express delivery has been scheduled on a certain day please ensure that you will be available to receive the parcel between 2:30pm and 8:00pm.</li>
                                <li>If by any chance you are unable to receive the parcel, you can entrust a family member or friend to receive the package</li>
                                <li>Should no-one be available to receive the parcel, the order will be forfeited and cancelled. Therefore, we will not refund you for any amount that you have spent on your order nor the express shipping fees.</li>
                                <li>For any orders that were placed after the cut off time of 12:30 pm on a Friday or on a working day before a Public Holiday, your item(s) will be processed on the following working day and your item(s) will be scheduled for delivery on that working day.</li>   
                            </ol>
                            <p>Please be informed that Express Delivery has been temporarily disabled due internal technical issue. We apologize for any inconvenience caused due to this matter. We are trying our best to fix the issue as soon as possible and put the service back online. Thank you for your kind understanding</p>
                        "
                    },
                    {
                        title: "Sale / Promotional Periods",
                        description: "
                            <ol>
                                <li>During peak sale / promotional periods, our delivery may take slightly longer than the usual lead times due to surges in online order volumes.</li>
                                <li>
                                    <ul>
                                        <li>Peninsular Malaysia: Additional 3 - 5 working days for your order to arrive.</li>
                                        <li>Sabah / Sarawak: Additional 3 - 7 working days for your order to arrive.</li>
                                    </ul>
                                </li>
                                <li> It is advised to place your order 2 weeks in advance of festive periods such as Hari Raya, Chinese New Year, Deepavali, etc.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Click And Collect (Not Available During MCO)",
                        description: "
                            <ol>
                                <li>For all purchases which have a checkout value above RM30.00, the customer will be eligible to enjoy our ‘Click & Collect‘ service.</li>
                                <li>All orders chosen to be delivered using the Click & Collect method will not be charged any shipping or handling fees.</li>
                                <li>All Click & Collect's order will only be available for any purchase compilation below 30KG (weight or volumetric, whichever greater) only.</li>
                                <li>At this moment our Click & Collect service will only cater to 134 selected outlets within Klang Valley, Johor, Perak, Penang, Kedah, Kelantan, Terengganu, Pahang and Negeri Sembilan area.</li>
                                <li>The expected time of arrival (ETA) for all Click & Collect parcels will be within the range of 5 - 10 working days after the order has been placed successfully and payment has been confirmed.</li>
                                <li>When your order has successfully arrived at the selected NIGHTCAT store you will be notified via email that your order is ready for collection.</li>
                                <li>You are required to keep and to bring along your parcel arrival notification email when you want to collect the parcel at our selected NIGHTCAT store. Both softcopy or a printed copy can be accepted for verification purposes.</li>
                                <li>In the event where the purchaser is not able to visit the selected NIGHTCAT store to collect the order, then the purchaser can entrust family members or friends to collect the order, as long as the entrusted person is able to present the confirmation email to a NIGHTCAT team member at the selected NIGHTCAT store.</li>
                                <li>The order should be collected within 7 calendar days after it has successfully arrived at the selected NIGHTCAT store. Should no one be available to collect the parcel, the order may be forfeited after the stipulated time given. Therefore, we will not refund you any amount that you have spent on your order.</li>
                            </ol>
                            <p>[UPDATE] Please be informed that the C&C service is not available during EMCO</p>
                        "
                    },
                    {
                        title: "How To Track Your Order",
                        description: "
                            <ol>
                                <li>Please locate your tracking number (example: NIGHTCAT18000000000) in the delivery confirmation email or by logging into your registered user account.</li>
                                <li>Alternatively, you can click here to check your parcel delivery status via our NIGHTCAT delivery tracking website page. You may then enter your tracking number into our tracking field (the white colour empty field that is under these words - Track your NIGHTCAT parcel) to view the status of your order delivery.</li>
                                <li>Please take note that tracking numbers may take a few hours to be reflected in our tracking system after you have received the delivery confirmation email.</li>
                            </ol>
                            <p>If there is an unfortunate event of a delay, it will be reflected in our NIGHTCAT tracking website. In the event that you have not received delivery updates within a week after receiving the confirmation email, please contact our customer service via email (nightcatdigitalsolutions@gmail.com) for further assistance.</p>
                        "
                    },
                ]
            },
            {
                id: "#termsCondition"
                title: "Terms & Condition",
                content: [
                    {
                        title: "Intoduction",
                        description: "
                            <p>1.1 Welcome to the Nightcat platform (the 'Site'). Please read the following Terms of Service carefully before using this Site or opening a Nightcat account ('Account') so that you are aware of your legal rights and obligations with respect to Nightcat Digital Solutions. (Company Registration No. 201903294705 [JM0919865-V]) and its affiliates and subsidiaries (individually and collectively, 'Nightcat', 'we', 'us' or 'our'). The 'Services' we provide or make available include</p>
                            <ol type='a'>
                                <li>the Site</li>
                                <li>the services provided by the Site and by Nightcat client software made available through the Site, and</li>
                                <li>(c) all information, linked pages, features, data, text, images, photographs, graphics, music, sounds, video (including live streams), messages, tags, content, programming, software, application services (including, without limitation, any mobile application services) or other materials made available through the Site or its related services ('Content').</li>
                            </ol>
                            <p>Any new features added to or augmenting the Services are also subject to these Terms of Service. These Terms of Service govern your use of Services provided by Nightcat.</p>
                            <p>1.2 The Services include an online platform service that provides a place and opportunity for the sale of goods between the buyer (“Buyer”) and the seller (“Seller”) (collectively “you”, “Users” or “Parties”). The actual contract for sale is directly between Buyer and Seller and Nightcat is not a party to that or any other contract between Buyer and Seller and accepts no obligations in connection with any such contract. Parties to such transaction will be entirely responsible for the sales contract between them, the listing of goods, warranty of purchase and the like. Nightcat is not involved in the transaction between Users. Nightcat may or may not pre-screen Users or the Content or information provided by Users. Nightcat reserves the right to remove any Content or information posted by you on the Site in accordance to Section 6.4 herein. Nightcat cannot ensure that Users will actually complete a transaction.</p>
                            <p>1.3 Before becoming a User of the Site, you must read and accept all of the terms and conditions in, and linked to, these Terms of Service and you must consent to the processing of your personal data as described in the Privacy Policy.</p>
                            <p>1.4 Nightcat reserves the right to change, modify, suspend or discontinue all or any part of this Site or the Services at any time or upon notice as required by local laws. Nightcat may release certain Services or their features in a beta version, which may not work correctly or in the same way the final version may work, and we shall not be held liable in such instances. Nightcat may also impose limits on certain features or restrict your access to parts of, or the entire, Site or Services in its sole discretion and without notice or liability.</p>
                            <p>1.5 Nightcat reserves the right to refuse to provide you access to the Site or Services or to allow you to open an Account for any reason.</p>
                            <p>BY USING NIGHTCAT SERVICES OR OPENING AN ACCOUNT, YOU GIVE YOUR IRREVOCABLE ACCEPTANCE OF AND CONSENT TO THE TERMS OF THIS AGREEMENT, INCLUDING THOSE ADDITIONAL TERMS AND CONDITIONS AND POLICIES REFERENCED HEREIN AND/OR LINKED HERETO.</p>
                            <p>IF YOU DO NOT AGREE TO THESE TERMS, PLEASE DO NOT USE OUR SERVICES OR ACCESS THE SITE. IF YOU ARE UNDER THE AGE OF 18 OR THE LEGAL AGE FOR GIVING CONSENT HEREUNDER PURSUANT TO THE APPLICABLE LAWS IN YOUR COUNTRY (THE “LEGAL AGE”), YOU MUST GET PERMISSION FROM A PARENT OR LEGAL GUARDIAN TO OPEN AN ACCOUNT AND THAT PARENT OR LEGAL GUARDIAN MUST AGREE TO THE TERMS OF THIS AGREEMENT. IF YOU DO NOT KNOW WHETHER YOU HAVE REACHED THE LEGAL AGE, OR DO NOT UNDERSTAND THIS SECTION, PLEASE DO NOT CREATE AN ACCOUNT UNTIL YOU HAVE ASKED YOUR PARENT OR LEGAL GUARDIAN FOR HELP. IF YOU ARE THE PARENT OR LEGAL GUARDIAN OF A MINOR WHO IS CREATING AN ACCOUNT, YOU MUST ACCEPT THE TERMS OF THIS AGREEMENT ON THE MINOR'S BEHALF AND YOU WILL BE RESPONSIBLE FOR ALL USE OF THE ACCOUNT OR COMPANY SERVICES USING SUCH ACCOUNT, WHETHER SUCH ACCOUNT IS CURRENTLY OPEN OR CREATED LATER.</p>
                        "
                    },
                    {
                        title: "Privacy",
                        description: "
                            <p>2.1 Your privacy is very important to us at Nightcat. To better protect your rights we have provided the Nightcat.com Privacy Policy to explain our privacy practices in detail. Please review the Privacy Policy to understand how Nightcat collects and uses the information associated with your Account and/or your use of the Services (the “User Information”). By using the Services or providing information on the Site, you:</p>
                            <ol type='i'>
                                <li>Consent to Nightcat's collection, use, disclosure and/or processing of your Content, personal data and User Information as described in the Privacy Policy</li>
                                <li>Agree and acknowledge that the proprietary rights of your User Information are jointly owned by you and Nightcat and</li>
                                <li>Shall not, whether directly or indirectly, disclose your User Information to any third party, or otherwise allow any third party to access or use your User Information, without Nightcat’s prior written consent.</li>
                            </ol>
                            <p>Users in possession of another User’s personal data through the use of the Services (the “Receiving Party”) hereby agree that, they will</p>
                            <ol type='i'>
                                <li>comply with all applicable personal data protection laws with respect to any such data</li>
                                <li>allow the User whose personal data the Receiving Party has collected (the “Disclosing Party”) to remove his or her data so collected from the Receiving Party’s database and</li>
                                <li>allow the Disclosing Party to review what information have been collected about them by the Receiving Party, in each case of (ii) and (iii) above, in compliance with and where required by applicable laws.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Limited License",
                        description: "
                            <p>3.1 Nightcat grants you a limited and revocable license to access and use the Services subject to the terms and conditions of these Terms of Service. All proprietary Content, trademarks, service marks, brand names, logos and other intellectual property (“Intellectual Property”) displayed in the Site are the property of Nightcat and where applicable, third party proprietors identified in the Site. No right or licence is granted directly or indirectly to any party accessing the Site to use or reproduce any Intellectual Property, and no party accessing the Site shall claim any right, title or interest therein. By using or accessing the Services you agree to comply with the copyright, trademark, service mark, and all other applicable laws that protect the Services, the Site and its Content. You agree not to copy, distribute, republish, transmit, publicly display, publicly perform, modify, adapt, rent, sell, or create derivative works of any portion of the Services, the Site or its Content. You also may not, without our prior written consent, mirror or frame any part or whole of the contents of this Site on any other server or as part of any other website. In addition, you agree that you will not use any robot, spider or any other automatic device or manual process to monitor or copy our Content, without our prior written consent (such consent is deemed given for standard search engine technology employed by Internet search websites to direct Internet users to this website).</p>
                            <p>3.2 You are welcome to link to the Site from your website, provided that your website does not imply any endorsement by or association with Nightcat. You acknowledge that Nightcat may, in its sole discretion and at any time, discontinue providing the Services, either in part or as a whole, without notice.</p>
                        "
                    },
                    {
                        title: "Software",
                        description: "
                            <p>4.1 Any software provided by us to you as part of the Services is subject to the provisions of these Terms of Service. Nightcat reserves all rights to the software not expressly granted by Nightcat hereunder. Any third-party scripts or code, linked to or referenced from the Services, are licensed to you by the third parties that own such scripts or code, not by Nightcat.</p>
                        "
                    },
                    {
                        title: "Accounts And Security",
                        description: "
                            <p>5.1 Some functions of our Services require registration for an Account by selecting a unique user identification ('User ID') and password, and by providing certain personal information. If you select a User ID that Nightcat, in its sole discretion, finds offensive or inappropriate, Nightcat has the right to suspend or terminate your Account. You may be able to use your Account to gain access to other products, websites or services to which we have enabled access or with which we have tied up or collaborated. Nightcat has not reviewed, and assumes no responsibility for any third party content, functionality, security, services, privacy policies, or other practices of those products, websites or services. If you do so, the terms of service for those products, websites or services, including their respective privacy policies, if different from these Terms of Service and/or our Privacy Policy, may also apply to your use of those products, websites or services.</p>
                            <p>5.2 You agree to</p>
                            <ol>
                                <li>Keep your password confidential and use only your User ID and password when logging in</li>
                                <li>Ensure that you log out from your account at the end of each session on the Site</li>
                                <li>Immediately notify Nightcat of any unauthorised use of your Account, User ID and/or password, and</li>
                                <li>Ensure that your Account information is accurate and up-to-date. You are fully responsible for all activities that occur under your User ID and Account even if such activities or uses were not committed by you. Nightcat will not be liable for any loss or damage arising from unauthorised use of your password or your failure to comply with this Section.</li>
                            </ol>
                            <p>5.3 You agree that Nightcat may for any reason, in its sole discretion and with or without notice or liability to you or any third party, immediately terminate your Account and your User ID, remove or discard from the Site any Content associated with your Account and User ID, withdraw any subsidies offered to you, cancel any transactions associated with your Account and User ID, temporarily or in more serious cases permanently withhold any sale proceeds or refunds, and/or take any other actions that Nightcat deems necessary. Grounds for such actions may include, but are not limited to, actual or suspected</p>
                            <ol>
                                <li>Extended periods of inactivity</li>
                                <li>Violation of the letter or spirit of these Terms of Service</li>
                                <li>Illegal, fraudulent, harassing, defamatory, threatening or abusive behaviour</li>
                                <li>Having multiple user accounts</li>
                                <li>Buying products on the Site for the purpose of commercial re-sale</li>
                                <li>Abnormal or excessive purchase of products from the same Seller or related group of Sellers</li>
                                <li>Voucher abuse (including, but not limited to, selling of vouchers to third parties, selling of vouchers or other credits at a significant markup above face value and/or abnormal or excessive use of vouchers on the Site), or</li>
                                <li>Behaviour that is harmful to other Users, third parties, or the business interests of Nightcat. Use of an Account for illegal, fraudulent, harassing, defamatory, threatening or abusive purposes may be referred to law enforcement authorities without notice to you. If a legal dispute arises or law enforcement action is commenced relating to your Account or your use of the Services for any reason, Nightcat may terminate your Account immediately with or without notice.</li>
                            </ol>
                            <p>5.4 Users may terminate their Account if they notify Nightcat in writing (including via email at help@support.shopee.com.my) of their desire to do so. Notwithstanding any such termination, Users remain responsible and liable for any incomplete transaction (whether commenced prior to or after such termination), shipment of the product, payment for the product, or the like, and Users must contact Nightcat after he or she has promptly and effectively carried out and completed all incomplete transactions according to the Terms of Service. Nightcat shall have no liability, and shall not be liable for any damages incurred due to the actions taken in accordance with this Section. Users waive any and all claims based on any such action taken by Nightcat.</p>
                            <p>5.5 You may only use the Services and/or open an Account if you are located in one of our approved countries, as updated from time to time.</p>
                        "
                    },
                    {
                        title: "Term Of Use",
                        description: "
                            <p>6.1 The license for use of this Site and the Services is effective until terminated. This license will terminate as set forth under these Terms of Service or if you fail to comply with any term or condition of these Terms of Service. In any such event, Nightcat may effect such termination with or without notice to you.</p>
                            <p>6.2 You agree not to:</p>
                            <ol>
                                <li>Upload, post, transmit or otherwise make available any Content that is unlawful, harmful, threatening, abusive, harassing, alarming, distressing, tortuous, defamatory, vulgar, obscene, libelous, invasive of another's privacy, hateful, or racially, ethnically or otherwise objectionable</li>
                                <li>Violate any laws, including without limitation any laws and regulation in relation to export and import restrictions, third party rights or our Prohibited and Restricted Items Policy</li>
                                <li>Upload, post, transmit or otherwise make available any Content featuring an unsupervised minor or use the Services to harm minors in any way</li>
                                <li>Use the Services or upload Content to impersonate any person or entity, or otherwise misrepresent your affiliation with a person or entity</li>
                                <li>Forge headers or otherwise manipulate identifiers in order to disguise the origin of any Content transmitted through the Services</li>
                                <li>Remove any proprietary notices from the Site</li>
                                <li>Cause, permit or authorize the modification, creation of derivative works, or translation of the Services without the express permission of Nightcat</li>
                                <li>Use the Services for the benefit of any third party or any manner not permitted by the licenses granted herein</li>
                                <li>Use the Services or upload Content in a manner that is fraudulent, unconscionable, false, misleading or deceptive</li>
                                <li>Open and/or operate multiple user accounts in connection with any conduct that violates either the letter or spirit of these Terms of Service</li>
                                <li>Access the Nightcat platform, open a user account, or otherwise access your user account using an emulator, simulator, bot or other similar hardware or software</li>
                                <li>Manipulate the price of any item or interfere with other User's listings</li>
                                <li>Take any action that may undermine the feedback or ratings systems</li>
                                <li>Attempt to decompile, reverse engineer, disassemble or hack the Services (or any portion thereof), or to defeat or overcome any encryption technology or security measures implemented by Nightcat with respect to the Services and/or data transmitted, processed or stored by Nightcat</li>
                                <li>Harvest or collect any information about or regarding other Account holders, including, without limitation, any personal data or information</li>
                                <li>Upload, email, post, transmit or otherwise make available any Content that you do not have a right to make available under any law or under contractual or fiduciary relationships (such as inside information, proprietary and confidential information learned or disclosed as part of employment relationships or under nondisclosure agreements)</li>
                                <li>Upload, email, post, transmit or otherwise make available any Content that infringes any patent, trademark, trade secret, copyright or other proprietary rights of any party</li>
                                <li>Upload, email, post, transmit or otherwise make available any unsolicited or unauthorised advertising, promotional materials, 'junk mail', 'spam', 'chain letters', 'pyramid schemes', or any other unauthorised form of solicitation</li>
                                <li>Upload, email, post, transmit or otherwise make available any material that contains software viruses, worms, Trojan-horses or any other computer code, routines, files or programs designed to directly or indirectly interfere with, manipulate, interrupt, destroy or limit the functionality or integrity of any computer software or hardware or data or telecommunications equipment</li>
                                <li>Disrupt the normal flow of dialogue, cause a screen to 'scroll' faster than other Users of the Services are able to type, or otherwise act in a manner that negatively affects other Users' ability to engage in real time exchanges</li>
                                <li>Interfere with, manipulate or disrupt the Services or servers or networks connected to the Services or any other User's use and enjoyment of the Services, or disobey any requirements, procedures, policies or regulations of networks connected to the Site</li>
                                <li>Take any action or engage in any conduct that could directly or indirectly damage, disable, overburden, or impair the Services or the servers or networks connected to the Services</li>
                                <li>Use the Services to intentionally or unintentionally violate any applicable local, state, national or international law, rule, code, directive, guideline, policy or regulation including, without limitation, laws and requirements (whether or not having the force of law) relating to anti-money laundering or counter-terrorism</li>
                                <li>Use the Services in violation of or to circumvent any sanctions or embargo administered or enforced by the U.S. Department of Treasury’s Office of Foreign Assets Control, the United Nations Security Council, the European Union or Her Majesty’s Treasury</li>
                                <li>Use the Services to violate the privacy of others or to 'stalk' or otherwise harass another</li>
                                <li>Infringe the rights of Nightcat, including any intellectual property rights and any passing off of the same thereof</li>
                                <li>Use the Services to collect or store personal data about other Users in connection with the prohibited conduct and activities set forth above and/or</li>
                                <li>List items which infringe upon the copyright, trademark or other intellectual property rights of third parties or use the Services in a manner which will infringe the intellectual property rights of others</li>
                                <li>Direct or encourage another user to conduct a transaction other than on the Site</li>
                            </ol>
                            <p>6.3 You understand that all Content, whether publicly posted or privately transmitted, is the sole responsibility of the person from whom such Content originated. This means that you, and not Nightcat, are entirely responsible for all Content that you upload, post, email, transmit or otherwise make available through the Site. You understand that by using the Site, you may be exposed to Content that you may consider to be offensive, indecent or objectionable. To the maximum extent permitted by applicable law, under no circumstances will Nightcat be liable in any way for any Content, including, but not limited to, any errors or omissions in any Content, or any loss or damage of any kind incurred as a result of the use of, or reliance on, any Content posted, emailed, transmitted or otherwise made available on the Site.</p>
                            <p>6.4 You acknowledge that Nightcat and its designees shall have the right (but not the obligation) in their sole discretion to pre-screen, refuse, delete, stop, suspend, remove or move any Content, including without limitation any Content or information posted by you, that is available on the Site without any liability to you. Without limiting the foregoing, Nightcat and its designees shall have the right to remove any Content</p>
                            <ol type='i'>
                                <li>That violates these Terms of Service or our Prohibited and Restricted Items Policy</li>
                                <li>If we receive a complaint from another User</li>
                                <li>If we receive a notice or allegation of intellectual property infringement or other legal instruction or request for removal or</li>
                                <li>If such Content is otherwise objectionable.</li>
                            </ol>
                            <p>We may also block delivery of a communication (including, without limitation, status updates, postings, messages and/or chats) to or from the Services as part of our effort to protect the Services or our Users, or otherwise enforce the provisions of these Terms and Conditions. You agree that you must evaluate, and bear all risks associated with, the use of any Content, including, without limitation, any reliance on the accuracy, completeness, or usefulness of such Content. In this regard, you acknowledge that you have not and, to the maximum extent permitted by applicable law, may not rely on any Content created by Nightcat or submitted to Nightcat, including, without limitation, information in Nightcat Forums and in all other parts of the Site.</p>
                            <p>6.5 You acknowledge, consent to and agree that Nightcat may access, preserve and disclose your Account information and Content to any legal, regulatory, or governmental authority, the relevant rights owner, or other third parties if required to do so by law pursuant to an order of a court or lawful request by any governmental or regulatory authority having jurisdiction over Nightcat or in a good faith belief that such access preservation or disclosure is reasonably necessary to:</p>
                            <ol>
                                <li>Comply with legal process</li>
                                <li>Enforce these Terms of Service or our Prohibited and Restricted Items Policy</li>
                                <li>Respond to claims that any Content violates the rights of third parties, including intellectual property rights</li>
                                <li>Respond to your requests for customer service or</li>
                                <li>Protect the rights, property or personal safety of Nightcat, its Users and/or the public.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Violation Of Our Terms Of Service",
                        description: "
                            <p>7.1 Violations of this policy may result in a range of actions, including, without limitation, any or all of the following:</p>
                            <ol type='i'>
                                <li>Listing deletion</li>
                                <li>Limits placed on Account privileges</li>
                                <li>Account suspension and subsequent termination</li>
                                <li>Criminal charges</li>
                                <li>Civil actions, including without limitation a claim for damages and/or interim or injunctive relief</li>
                            </ol>
                        "
                    },
                    {
                        title: "Reporting Intellectual Property Rights Infringement",
                        description: "
                            <p>8.1 As stated above, Nightcat does not allow listings that violate the intellectual property rights of brands or other intellectual property rights owners (“IPR Owner”).</p>
                            <p>8.2 Except where expressly stated otherwise, the Users are independent individuals or businesses and they are not associated with Nightcat in any way and Nightcat is neither the agent nor representative of the Users and does not hold and/or own any of the merchandises listed on the Site.</p>
                            <p>8.3 If you are an IPR Owner or an agent duly authorised by an IPR Owner (“IPR Agent”) and you believe that your right or your principal’s right has been infringed, please notify us by submitting the online form at https://shopee-support.formstack.com/forms/ipr_my and provide us the documents requested below to support your claim. Do allow us time to process the information provided. Nightcat will respond to your complaint as soon as practicable.</p>
                            <p>8.4 Complaints under this Section 8 must be provided in the form prescribed by Nightcat, which may be updated from time to time, and must include at least the following:</p>
                            <ol type='a'>
                                <li>A physical or electronic signature of an IPR Owner or IPR Agent (collectively, “Informant”)</li>
                                <li>A description of the type and nature of intellectual property right that is allegedly infringed and proof of rights</li>
                                <li>A description of the nature of alleged infringement with sufficient details to enable Nightcat to assess the complaint</li>
                                <li>URL(s) of the listing(s) which contain the alleged infringement</li>
                                <li>Sufficient information to allow Nightcat to contact the Informant, such as Informant’s physical address, telephone number and e-mail address</li>
                                <li>A statement by Informant that the complaint is filed on good faith belief and that the use of the intellectual property as identified by the Informant is not authorised by the IPR Owner or the law</li>
                                <li>A statement by the Informant that the information in the notification is accurate, that the Informant will indemnify us for any damages we may suffer as a result of the information provided by the Informant and that the Informant has the appropriate right or is authorised to act on the IPR Owner’s behalf in all matters relating to the complaint.</li>
                            </ol>
                            <p>8.5 Nightcat acknowledges a manufacturer’s right to enter into certain exclusive distribution agreements or minimum advertised price agreements for its products. However, violations of such agreements do not constitute intellectual property rights infringement. As the enforcement of these agreements is a matter between the manufacturer and the sellers, Nightcat does not assist in this type of enforcement activity and does not enforce exclusive distribution rights or price-control matters except within the countries that have laws specifically governing selective or exclusive distribution.</p>
                            <p>8.6 Each and every Seller agrees to hold Nightcat and its Affiliates harmless from all claims, causes of action, damages and judgments arising out of any removal of any Content or product listings pursuant to or in relation to any intellectual property infringement claim.</p>
                        "
                    },
                    {
                        title: "Purchase And Payment",
                        description: "
                            <p>9.1 Nightcat supports one or more of the following payment methods in each country it operates in:</p>
                            <ol type='i'>
                                <li>
                                    <p>
                                        <b>Credit Card</b>
                                        <br>
                                        Card payments are processed through third-party payment channels and the type of credit cards accepted by these payment channels may vary depending on the jurisdiction you are in.
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <b>Cash on Delivery (COD)</b>
                                        <br>
                                        Nightcat provides COD services in selected countries. Buyers may pay cash directly to the deliver agent upon their receipt of the purchased item.
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <b>Bank Transfer</b>
                                        <br>
                                        Buyer may make payments through an Automated Teller Machine or internet bank transfer (“Bank Transfer”) to our designated Nightcat Guarantee Account (as defined in Section 12). Buyer must provide Nightcat with the transfer receipt or payment transaction reference for verification purposes through the ‘Upload Receipt’ function found in Nightcat’s app as payment confirmation. If payment confirmation is not received by Nightcat within three (3) days, Buyer’s order will be cancelled.
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <b>Instalment Purchase Plan</b>
                                        <br>
                                        Buyers may pay via instalment for orders exceeding RM 500. Payment via instalments are processed through third-party channels. The banks that currently support instalment plans are Maybank and Public Bank.
                                    </p>
                                </li>
                            </ol>
                            <p>9.2 Buyer may only change their preferred mode of payment for their purchase prior to making payment.</p>
                            <p>9.3 Nightcat takes no responsibility and assume no liability for any loss or damages to Buyer arising from shipping information and/or payment information entered by Buyer or wrong remittance by Buyer in connection with the payment for the items purchased. We reserve the right to check whether Buyer is duly authorised to use certain payment method, and may suspend the transaction until such authorisation is confirmed or cancel the relevant transaction where such confirmation is not available.</p>
                        "
                    },
                    {
                        title: "Seller Wallet",
                        description: "
                            <p>10.1 Your Account allows the storage of money you receive from your sales proceeds made on the Platform (“Seller Wallet”). The sum of this money, minus any withdrawals, will be reflected as your Seller Wallet’s balance.</p>
                            <p>10.2 You may transfer funds from your Seller Wallet (up to the amount of your Nightcat Wallet balance) to your linked bank account (“Linked Account”) by submitting a transfer request (“Withdrawal Request”) a maximum of once per day. Nightcat may also automatically transfer funds from your Seller Wallet to your Linked Account on a regular basis, as determined by Nightcat. Nightcat shall only process such transfers on business days and such transfers may take up to two business days to be credited to your Linked Account.</p>
                            <p>10.3 Sellers are entitled to one (1) free Withdrawal Request per week (“Weekly Withdrawal Limit”). Nightcat may impose a fee of RM0.12 for each additional Withdrawal Request made in excess of the Weekly Withdrawal Limit (“Withdrawal Fee”). The Withdrawal Fee is subjected to Sales and Service Tax (“SST”). The Weekly Withdrawal Limit and the Withdrawal Fee are subject to change at Nightcat’s discretion.</p>
                            <p>10.4 Money from your sale of items on Nightcat shall be credited to your Seller Wallet within three (3) days after the item is delivered to Buyer or immediately after Buyer has acknowledged that they have received the item.</p>
                            <p>10.5 Once submitted, you may not modify or cancel a Withdrawal Request.</p>
                            <p>10.6 If there is an error in the processing of any transaction, you authorize us to initiate debit or credit entries to your designated bank account, to correct such error, provided that any such correction is made in accordance with applicable laws and regulations. If we are unable to debit your designated bank account for any reason, you authorize us to resubmit the debit, plus any applicable fees, to any other bank account or payment instrument that you have on file with us or to deduct the debit and applicable fees from your Seller Wallet in the future. If we are unable to credit your Alternative Account, for any reason, we reserve our right to handle or process such money in accordance with the applicable law, including the Unclaimed Moneys Act 1965.</p>
                            <p>10.7 You authorize us to initiate debit or credit entries to your Seller Wallet:</p>
                            <ol type='i'>
                                <li>To correct any errors in the processing of any transaction</li>
                                <li>Where Nightcat has determined that you have engaged in fraudulent or suspicious activity and/or transactions</li>
                                <li>In connection with any lost, damaged or incorrect items</li>
                                <li>In connection with any rewards or rebates</li>
                                <li>In connection with any uncharged fees</li>
                                <li>In connection with the settlement of any transaction dispute, including any compensation due to, or from, you</li>
                                <li>In connection with any banned items or items that are detained by customs</li>
                                <li>In connection with any change of mind agreed to by both Buyer and Seller and</li>
                                <li>To purchase Advertising Credits where you have activated the Advertising Credits Top Up Feature and your Advertising Credits have fallen below your Advertising Credits Minimum Amount.</li>
                            </ol>
                        "
                    },
                    {
                        title: "NightCat Guarantee",
                        description: "
                            <p>11.1 Nightcat Guarantee is a service provided by Nightcat or its authorised agent to protect purchases. To protect against the risk of liability, payment for purchases made to Seller using the Services will be held by Nightcat or its authorised agent (“Nightcat Guarantee Account”). Seller will not receive interest or other earnings from the sum you have paid into Nightcat Guarantee Account.</p>
                            <p>11.2 After Buyer makes payment for his/her order (“Buyer’s Purchase Monies”), Buyer’s Purchase Monies will be held in Nightcat Guarantee Account until:</p>
                            <ol type='a'>
                                <li>Buyer sends confirmation to Nightcat that Buyer has received his/her goods, in which case, unless 11.2(d) applies, Nightcat will release Buyer’s Purchase Monies (less the Seller’s proportion of the Shipping fee (if applicable), the Transaction Fee and Tax Amount (defined below), and (if applicable) the Cross Border Fee (defined below)) in Nightcat Guarantee Account to Seller</li>
                                <li>Nightcat Guarantee Period (or any approved extension under 11.3) expires, in which case, unless 11.2(c) or 11.2(d) applies, Nightcat will release Buyer’s Purchase Monies (less the Seller’s proportion of the Shipping Fee (if applicable), the Transaction Fee and Tax Amount (defined below), and (if applicable) the Cross Border Fee (defined below)) in Nightcat Guarantee Account to Seller</li>
                                <li>Nightcat determines that Buyer’s application for a return of goods and/or refund is successful, in which case, unless 11.2(d) applies, Nightcat will provide a refund to Buyer, subject to and in accordance with the Refunds and Return Policy</li>
                                <li>Such other time as Nightcat reasonably determines that a distribution of Buyer’s Purchase Monies (less the Seller’s proportion of the Shipping Fee (if applicable), the Transaction Fee and Tax Amount (defined below), and (if applicable) the Cross Border Fee (defined below)) is appropriate, including, without limitation, where it deems reasonably necessary to comply with applicable law or a court order or to enforce these Terms of Service.</li>
                            </ol>
                            <p>Nightcat Guarantee is only offered to Buyers who have made payment through the channels provided by Nightcat into Nightcat Guarantee Account. Offline arrangements between Buyer and Seller will not be covered under Nightcat Guarantee.</p>
                            <p>11.3 Payments made through Nightcat channels will be held in the Nightcat Guarantee Account for a specified period of time (the “Nightcat Guarantee Period”). To find out more about the Nightcat Guarantee Period, please click this link. Buyer may apply for a one-time extension of Nightcat Guarantee Period prior to the expiry of the applicable Nightcat Guarantee Period, subject to and in accordance with the Refunds and Return Policy. Upon Buyer’s application, Nightcat Guarantee Period may be extended for a maximum period of three (3) days unless Nightcat in its sole discretion determines that a longer extension is appropriate or required.</p>
                            <p>11.4 If, for any reason, the Seller's bank account cannot be credited and/or the Seller cannot be contacted, Nightcat will use reasonable endeavours to contact the Seller using the contact details provided by him/her. In the event that the Seller cannot be contacted for more than twelve (12) months after the become due to the Seller and the Buyer’s Purchase Monies remain unclaimed, we reserve our right to handle or process such money in accordance with the applicable law, including the Unclaimed Moneys Act 1965.</p>
                            <p>11.5 Seller/Buyer must be the beneficial owner of the Account and conduct transaction on the Site only on behalf of him or herself. Nightcat may require Seller or Buyer to provide his or her personal data such as recent identity photograph, bank account details and/or any other such documentation necessary, for verification purposes, including verification required by third party payment processing and logistic service providers. Seller/Buyer hereby grants Nightcat his/her consent to use or provide to third party his/her personal data to facilitate his/her use of the Site. Further, Seller/Buyer authorises Nightcat to use his/her personal data to make any inquires we consider necessary to validate his/her identity with the appropriate entity such as his/her bank. For more information in relation to how Nightcat handles your personal information, please visit our Privacy Policy page.</p>
                            <p>11.6 The Nightcat Guarantee is in addition and without limitation to Buyer’s and Seller’s obligations under applicable law, which may go above and beyond what is provided for by the Nightcat Guarantee. The Nightcat Guarantee is neither intended nor designed to assist Buyer or Seller in complying with its own legal obligations, for which each party will remain solely responsible, and Nightcat accepts no liability in connection with the same. Without limitation, the Nightcat Guarantee does not constitute a product warranty.</p>
                            <p>11.7 Buyer and Seller acknowledge and agree that Nightcat’s decision (including any appeals) in respect of and relating to any issues concerning the Nightcat Guarantee is final.</p>
                            <p>11.8 For the avoidance of doubt, any transactions not conducted on the Site will not qualify for the protection offered by Nightcat Guarantee.</p>
                        "
                    },
                    {
                        title: "Delivery",
                        description: "
                            <p>12.1 Nightcat will inform Seller when Nightcat receives Buyer’s Purchase Monies. Unless otherwise agreed with Nightcat, Seller should then make the necessary arrangements to have the purchased item delivered to Buyer and provide details such as the name of the delivery company, the tracking number, etc. to Buyer through the Site.</p>
                            <p>12.2 Seller must use his/her best effort to ensure that Buyer receives the purchased items within, whichever applicable, the Nightcat Guarantee Period or the time period specified (for offline payment) by Seller on Seller’s listing.</p>
                            <p>12.3 Users understand that Seller bears all risk attached to the delivery of the purchased item(s) and warrants that he/she has or will obtain adequate insurance coverage for the delivery of the purchased item(s). In the event where the purchased item(s) is damaged, lost or failure of delivery during the course of delivery, Users acknowledge and agree that Nightcat will not be liable for any damage, expense, cost or fees resulted therefrom and Seller and/or Buyer will reach out to the logistic service provider to resolve such dispute.</p>
                            <p>12.4 For Cross-Border Transaction. Users understand and acknowledge that, where a product listing states that the product will ship from overseas, such product is being sold from a Seller based outside of Malaysia, and the importation and exportation of such product is subject to local laws and regulations. Users should familiarise themselves with all import and export restrictions that apply to the designating country. Users acknowledge that Nightcat cannot provide any legal advice in this regard and agrees that Nightcat shall not bear any risks or liabilities associated with the import and export of such products to Malaysia.</p>
                            <p>12.5 Where the Buyer elects to have a purchased item delivered by any other shipping method, the fee payable to the delivery company (“Shipping Fee”) shall be borne by the Buyer, Seller and Nightcat in such proportions as may be determined by Nightcat and published on the Site from time to time. Nightcat shall</p>
                            <ol type='i'>
                                <li>Collect the Buyer’s proportion of the Shipping Fee from the Buyer</li>
                                <li>Deduct the Seller’s proportion of the Shipping Fee from the Buyer’s Purchase Monies in accordance with Section 11.2, and</li>
                                <li>Pay the total Shipping Fee to the delivery company.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Cancellation, Return And Refund",
                        description: "
                            <p>13.1 Buyer may only cancel his/her order prior to the payment of Buyer’s Purchase Monies into Nightcat Guarantee Account.</p>
                            <p>13.2 Buyer may apply for the return of the purchased item and refund prior to the expiry of Nightcat Guarantee Period, if applicable, subject to and in accordance with Nightcat’s Refunds and Return Policy. Please refer to Nightcat’s Refunds and Return Policy for further information.</p>
                            <p>13.3 Nightcat reserves the right to cancel any transaction on the Site and Buyer agrees that Buyer’s sole remedy will be to receive a refund of the Buyer’s Purchase Monies paid into Nightcat Guarantee Account.</p>
                            <p>13.4 If you have redeemed Nightcat Coins for your transaction and you are successful in obtaining a refund based on Nightcat’s Refunds and Return Policy, Nightcat shall refund the monies you have actually paid for the item and credit back any redeemed Nightcat Coins to your Account separately.</p>
                            <p>13.5 Nightcat does not monitor the cancellation, return and refund process for offline payment.</p>
                            <p>13.6 Refunds to Buyers shall be made to their NightcatPay wallet within one (1) day of the return or refund request being approved.</p>
                        "
                    },
                    {
                        title: "Seller's Responsibilities",
                        description: "
                            <p>14.1 Seller shall properly manage and ensure that relevant information such as the price and the details of items, inventory amount and terms and conditions for sales is updated on Seller’s listing and shall not post inaccurate or misleading information.</p>
                            <p>14.2 The price of items for sale will be determined by the Seller at his/her own discretion. The price of an item and shipping charges shall include the entire amount to be charged to Buyer such as sales tax, value-added tax, tariffs, etc. and Seller shall not charge Buyer such amount additionally and separately.</p>
                            <p>14.3 Seller agrees that Nightcat may at its discretion engage in promotional activities to induce transactions between Buyer and Seller by reducing, discounting or refunding fees, or in other ways. The final price that Buyer will pay actually will be the price that such adjustment is applied to.</p>
                            <p>14.4 For the purpose of promoting the sales of the items listed by Seller, Nightcat may post such items (at adjusted price) on third-party websites (such as portal sites and price comparison sites) and other websites (domestic or foreign) operated by Nightcat.</p>
                            <p>14.5 Seller shall issue receipts, credit card slips or tax invoices to Buyer on request.</p>
                            <p>14.6 Seller acknowledges and agrees that Seller will be responsible for paying all taxes, customs and duties for the item sold and Nightcat cannot provide any legal or tax advice in this regard. As tax laws and regulations may change from time to time, Sellers are advised to seek professional advice if in doubt.</p>
                            <p>14.7 Seller acknowledge and agrees that Seller’s violation of any of Nightcat’s polices will result in a range of actions as stated in Section 7.1.</p>
                        "
                    },
                    {
                        title: "Paid Advertising",
                        description: "
                            <p>15.1 Nightcat will be launching keyword advertising and/or other advertising services (hereinafter referred to as 'Paid Advertising') on its Paid Advertising Site on an ongoing basis. Sellers may purchase the Paid Advertising services. Nightcat provides the Paid Advertising services in accordance with these Terms of Service and any explanatory materials published on this Site, the Paid Advertising Site or otherwise communicated to Sellers in writing (hereinafter referred to as the 'Paid Advertising Rules'). Sellers who purchase Paid Advertising services agree to be bound by the Paid Advertising Rules. If you are not agreeable to being bound by the Paid Advertising Rules, do not buy any Paid Advertising Services.</p>
                            <p>15.2 In order to purchase Paid Advertising services, you must be an eligible Seller under the Paid Advertising Rules. At the time when you purchase and pay for the Paid Advertising Services, your Account must not be suspended.</p>
                            <p>15.3 You may purchase Paid Advertising services by purchasing advertising credits on the Paid Advertising Site (“Advertising Credits”), and fees payable for the Paid Advertising services will be deducted from the Advertising Credits on a pay-per-click basis, as determined by Nightcat. All Advertising Credits will be subject to goods and services tax. Except as otherwise provided in the applicable Paid Advertising Rules, you may not cancel the order and/or request for a refund after you have purchased Advertising Credits and completed the payment process. Nightcat will provide an electronic invoice for Paid Advertising services purchased on a monthly basis and Sellers are to ensure that a correct and working e-mail address is provided for receiving such invoices. The invoice will contain the name and address provided by you, the amount of Advertising Credits purchased and the remaining balance of your Advertising Credits as at the date of the invoice.</p>
                            <p>15.4 You have the option to purchase the Paid Advertising service at the time you list an item for sale or subsequently. When you purchase the Paid Advertising service, you may</p>
                            <ol type='i'>
                                <li>Manage the Paid Advertising service yourself or</li>
                                <li>Authorize Nightcat to manage the Paid Advertising service for you.</li>
                            </ol>
                            <p>In both cases, you may set different budgets, keywords, marketing periods, etc. for each item in accordance with the Paid Advertising Rules. You may also choose to have your Advertising Credits automatically topped up via your Nightcat Wallet (“Advertising Credits Top Up Feature”) if your Advertising Credits balance falls below an amount set by you (“Advertising Credits Minimum Amount”). When activating the Advertising Credits Top Up Feature, you may choose the Advertising Credits Minimum Amount and the amount of top up, and you consent to the debit of your Nightcat Wallet in accordance with Section 10 of these Terms of Service. The Paid Advertising service for each item will be activated and will expire on the respective dates set by you or Nightcat (the “Paid Advertising Period”). You will not be entitled to transfer the remaining Paid Advertising Period or Advertising Credits to other items if an item is sold or unlisted during the Paid Advertising Period you or Nightcat set (based on your instructions) for that item. The Advertising Credits will also not be refunded.</p>
                            <p>15.5 Where you have authorized Nightcat to manage the Paid Advertising service for you, you understand and agree to indemnify, defend and hold harmless Nightcat from and against any and all losses which may be sustained, instituted, made or alleged against or suffered or incurred by Nightcat and which arises (whether directly or indirectly) out of, in the course of or in connection with Nightcat accessing your Seller’s account and/or executing your instructions, for the purpose of managing the Paid Advertising service on your behalf.</p>
                            <p>15.6 The goods you list on the Site must comply with all relevant laws and regulations, the Paid Advertising Rules, these Terms of Service and the Prohibited and Restricted Items Policy. You understand and agree that Nightcat has the right to immediately remove any listing which violates any of the foregoing and any Paid Advertising fees that you have paid or Advertising Credits you have used in relation to any listing removed pursuant to this Section 15.6 will not be refunded. Nightcat will also not be liable to compensate you for any loss whatsoever in relation to listings removed pursuant to this Section 15.6.</p>
                            <p>15.7 You understand and agree that Nightcat does not warrant or guarantee any increase in viewership or sales of your items as a result of the Paid Advertising services.</p>
                            <p>15.8 You are advised to only purchase Paid Advertising services after fully considering your budget and intended advertising objectives. Except as otherwise provided in these Terms of Service or the Paid Advertising Rules, Nightcat shall not be liable for any compensation or be subject to any liability (including but not limited to actual expenses and lost profits) for the results or intended results of any Paid Advertising service.</p>
                            <p>15.9 If, notwithstanding anything in these terms of service, Nightcat is found by a court of competent jurisdiction to be liable (including for gross negligence) in relation to any paid advertising service, then, to the maximum extent permitted by applicable law, its liability to you or to any third party is limited to the amount paid by you for the paid advertising service in question only.</p>
                        "
                    },
                    {
                        title: "Purchase And Sale Of Alcohol",
                        description: "
                            <p>16.1 The purchase and sale of alcoholic products (“Alcohol”) on the Site is permitted by Nightcat subject to the terms and conditions of this Section 20. If you are a buyer of Alcohol (“Alcohol Buyer”), you will be deemed to have consented to the terms and conditions in this Section 20 when you purchase Alcohol on the Site. Similarly, if you are an approved seller of Alcohol (“Alcohol Seller”), you will be deemed to have consented to the terms and conditions in this Section 16 when you sell Alcohol on the Site.</p>
                            <p>16.2 If you are an Alcohol Buyer:</p>
                            <ol type='i'>
                                <li>
                                    You represent and warrant that you and (if applicable) the person receiving the Alcohol (“Recipient”) are
                                    <ol type='a'>
                                        <li>Aged 21 or above</li>
                                        <li>Are not Muslim or otherwise prohibited from buying Alcohol under any law, regulation or religion and</li>
                                        <li>Understand the following: “MEMINUM ARAK BOLEH MEMBAHAYAKAN KESIHATAN” and</li>
                                    </ol>
                                </li>
                                <li>If requested by an Alcohol Seller or Nightcat (or its agents), you and/or the Recipient shall provide photo identification for age verification purposes.</li>
                            </ol>
                            <p>16.3 If you are an Alcohol Seller, you represent and warrant that:</p>
                            <ol type='i'>
                                <li>You are not Muslim or otherwise prohibited from selling Alcohol under any law, regulation or religion</li>
                                <li>You hold all necessary licences and/or permits to sell Alcohol through the Site, and shall provide a copy of such licences and/or permits and supporting documents to Nightcat immediately upon request for verification purposes and</li>
                                <li>All information and documents provided to Nightcat are true and accurate.</li>
                            </ol>
                            <p>16.4 When delivering Alcohol to an Alcohol Buyer:</p>
                            <ol type='i'>
                                <li>The delivery agent reserves the right to request for valid photo identification for age verification purposes and</li>
                                <li>Nightcat (via the delivery agent) reserves the right to refuse the delivery of Alcohol if the Alcohol Buyer and/or the Recipient appears intoxicated or is unable to provide valid photo identification for age verification purposes.</li>
                            </ol>
                            <p>16.5 Each Alcohol Buyer and Alcohol Seller severally agrees to indemnify, defend and hold harmless Nightcat, and its shareholders, subsidiaries, affiliates, directors, officers, agents, co-branders or other partners, and employees (collectively, the 'Indemnified Parties') from and against any and all claims, actions, proceedings, and suits and all related liabilities, damages, settlements, penalties, fines, costs and expenses (including, without limitation, any other dispute resolution expenses) incurred by any Indemnified Party arising out of or relating to:</p>
                            <ol type='i'>
                                <li>any inaccuracy or breach of its representations in Section 16.2 and/or Section 16.3 (as applicable) and</li>
                                <li>its breach of any law or any rights of a third party.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Transaction Fees",
                        description: "
                            <p>17.1 Nightcat charges a fee for all successful transactions completed on the Site (“Transaction Fee”). The Transaction Fee is borne by the Seller, and is calculated at two percent (2%) of the Buyer’s Purchase Monies, rounded up to the nearest cent. The Transaction Fee is subject to SST (“Tax Amount”), and the Seller is responsible for such Tax Amount.</p>
                            <p>17.2 For Sellers located outside of Malaysia, Nightcat charges a fee for all successful transactions completed on the Site (“Cross Border Fee”). The Cross Border Fee is borne by the Seller, and is calculated according to the rates as notified to such Sellers from time to time on the Site.</p>
                            <p>17.3 Following the successful completion of a transaction, Nightcat shall deduct the Transaction Fee and the Tax Amount, and the Cross Border Fee (as applicable) from the Buyer’s Purchase Monies, and remit the balance to the Seller in accordance with Section 12.2. Nightcat shall issue receipts or tax invoices for the Transaction Fee and Tax Amount paid by Seller on request.</p>
                        "
                    },
                    {
                        title: "Disputes",
                        description: "
                            <p>18.1 In the event a problem arises in a transaction, the Buyer and Seller agree to communicate with each other first to attempt to resolve such dispute by mutual discussions, which Nightcat shall use reasonable commercial efforts to facilitate. If the matter cannot be resolved by mutual discussions, Users may approach the claims tribunal of their local jurisdiction to resolve any dispute arising from a transaction.</p>
                            <p>18.2 Each Buyer and Seller covenants and agrees that it will not bring suit or otherwise assert any claim against Nightcat or its Affiliates (except where Nightcat or its Affiliates is the Seller of the product that the claim relates to) in relation to any transaction made on the Site or any dispute related to such transaction.</p>
                            <p>18.3 Users covered under Nightcat Guarantee may send written request to Nightcat to assist them in resolving issues which may arise from a transaction upon request. Nightcat may, at its sole discretion and with absolutely no liability to Seller and Buyer, take all necessary steps to assist Users resolving their dispute. For more information, please refer to Nightcat’s Refunds and Return Policy.</p>
                            <p>18.4 To be clear, the services provided under this Section 15 are only available to Buyers covered under Nightcat Guarantee. Buyer using other payment means for his/her purchase should contact Seller directly.</p>
                        "
                    },
                    {
                        title: " Feedback",
                        description: "
                            <p>19.1 Nightcat welcomes information and feedback from our Users which will enable Nightcat to improve the quality of service provided. Please refer to our feedback procedure below for further information:</p>
                            <ol type='i'>
                                <li>Feedback may be made in writing through email to or using the feedback form found on the App.</li>
                                <li>Anonymous feedback will not be accepted.</li>
                                <li>Users affected by the feedback should be fully informed of all facts and given the opportunity to put forward their case.</li>
                                <li>Vague and defamatory feedback will not be entertained.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Disclaimers",
                        description: "
                            <p>20.1 The services are provided 'as is' and without any warranties, claims or representations made by nightcat of any kind either expressed, implied or statutory with respect to the services, including, without limitation, warranties of quality, performance, non-infringement, merchantability, or fitness for a particular purpose, nor are there any warranties created by course of dealing, course of performance or trade usage. without limiting the foregoing and to the maximum extent permitted by applicable law, nightcat does not warrant that the services, this site or the functions contained therein will be available, accessible, uninterrupted, timely, secure, accurate, complete or error-free, that defects, if any, will be corrected, or that this site and/or the server that makes the same available are free of viruses, clocks, timers, counters, worms, software locks, drop dead devices, trojan-horses, routings, trap doors, time bombs or any other harmful codes, instructions, programs or components.</p>
                            <p>20.2 You acknowledge that the entire risk arising out of the use or performance of the site and/or the services remains with you to the maximum extent permitted by applicable law.</p>
                            <p>20.3 Nightcat has no control over and, to the maximum extent permitted by applicable law, does not guarantee or accept any responsibility for: (a) the fitness for purpose, existence, quality, safety or legality of items available via the services; or (b) the ability of sellers to sell items or of buyers to pay for items.if there is a dispute involving one or more users, such users agree to resolve such dispute between themselves directly and, to the maximum extent permitted by applicable law, release nightcat and its affiliates from any and all claims, demands and damages arising out of or in connection with any such dispute.</p>
                        "
                    },
                    {
                        title: "Exclusions And Limitations Of Liability",
                        description: "
                            <p>21.1 To the maximum extent permitted by applicable law, in no event shall nightcat be liable whether in contract, warranty, tort (including, without limitation, negligence (whether active, passive or imputed), product liability, strict liability or other theory), or other cause of action at law, in equity, by statute or otherwise, for:</p>
                            <ol type='i'>
                                <li>(a) loss of use; (b) loss of profits; (c) loss of revenues; (d) loss of data; (e) loss of good will; or (f) failure to realise anticipated savings, in each case whether direct or indirect or</li>
                                <li>Any indirect, incidental, special or consequential damages, arising out of or in connection with the use or inability to use this site or the services, including, without limitation, any damages resulting therefrom, even if Nightcat has been advised of the possibility of such damages.</li>
                            </ol>
                            <p>21.2 You acknowledge and agree that your only right with respect to any problems or dissatisfaction with the services is to request for termination of your account and/or discontinue any use of the services.</p>
                            <p>21.3 If, notwithstanding the previous sections, Nightcat is found by a court of competent jurisdiction to be liable (including for gross negligence), then, to the maximum extent permitted by applicable law, its liability to you or to any third party is limited to the lesser of:</p>
                            <ol type='a'>
                                <li>Any amounts due and payable to you pursuant to the nightcat guarantee and</li>
                                <li>Sg $100 (one hundred singapore dollars).</li>
                            </ol>
                            <p>21.4 Nothing in these terms of service shall limit or exclude any liability for death or personal injury caused by nightcat’s negligence, for fraud or for any other liability on the part of nightcat that cannot be lawfully limited and/or excluded.</p>
                        "
                    },
                    {
                        title: " Links To Third Party Sites And Sharing Videos From Youtube",
                        description: "
                            <p>22.1 Third party links provided throughout the Site will let you leave this Site. These links are provided as a courtesy only, and the sites they link to are not under the control of Nightcat in any manner whatsoever and you therefore access them at your own risk. Nightcat is in no manner responsible for the contents of any such linked site or any link contained within a linked site, including any changes or updates to such sites. Nightcat is providing these links merely as a convenience, and the inclusion of any link does not in any way imply or express affiliation, endorsement or sponsorship by Nightcat of any linked site and/or any of its content therein.</p>
                            <p>22.2 Nightcat allows you to share videos from YouTube on the Nightcat Livestream feature (“YouTube Content”). By sharing YouTube Content, you hereby agree to be bound by the YouTube Terms of Service (https://www.youtube.com/t/terms).</p>
                        "
                    },
                    {
                        title: "Your Contributions To The Services",
                        description: "
                            <p>23.1 By submitting Content for inclusion on the Services, you represent and warrant that you have all necessary rights and/or permissions to grant the licenses below to Nightcat. You further acknowledge and agree that you are solely responsible for anything you post or otherwise make available on or through the Services, including, without limitation, the accuracy, reliability, nature, rights clearance, compliance with law and legal restrictions associated with any Content contribution. You hereby grant Nightcat and its successors a perpetual, irrevocable, worldwide, non-exclusive, royalty-free, sub-licensable and transferable license to use, copy, distribute, republish, transmit, modify, adapt, create derivative works of, publicly display, and publicly perform such Content contribution on, through or in connection with the Services in any media formats and through any media channels, including, without limitation, for promoting and redistributing part of the Services (and its derivative works) without need of attribution and you agree to waive any moral rights (and any similar rights in any part of the world) in that respect. You understand that your contribution may be transmitted over various networks and changed to conform and adapt to technical requirements.</p>
                            <p>23.2 Any Content, material, information or idea you post on or through the Services, or otherwise transmit to Nightcat by any means (each, a 'Submission'), is not considered confidential by Nightcat and may be disseminated or used by Nightcat without compensation or liability to you for any purpose whatsoever, including, but not limited to, developing, manufacturing and marketing products. By making a Submission to Nightcat, you acknowledge and agree that Nightcat and/or other third parties may independently develop software, applications, interfaces, products and modifications and enhancements of the same which are identical or similar in function, code or other characteristics to the ideas set out in your Submission. Accordingly, you hereby grant Nightcat and its successors a perpetual, irrevocable, worldwide, non-exclusive, royalty-free, sub-licensable and transferable license to develop the items identified above, and to use, copy, distribute, republish, transmit, modify, adapt, create derivative works of, publicly display, and publicly perform any Submission on, through or in connection with the Services in any media formats and through any media channels, including, without limitation, for promoting and redistributing part of the Services (and its derivative works). This provision does not apply to personal information that is subject to our privacy policy except to the extent that you make such personal information publicly available on or through the Services.</p>
                        "
                    },
                    {
                        title: "Third Party Contributions To The Services And External Links",
                        description: "
                            <p>24.1 Each contributor to the Services of data, text, images, sounds, video, software and other Content is solely responsible for the accuracy, reliability, nature, rights clearance, compliance with law and legal restrictions associated with their Content contribution. As such, Nightcat is not responsible to, and shall not, regularly monitor or check for the accuracy, reliability, nature, rights clearance, compliance with law and legal restrictions associated with any contribution of Content. You will not hold Nightcat responsible for any User's actions or inactions, including, without limitation, things they post or otherwise make available via the Services.</p>
                            <p>24.2 In addition, the Services may contain links to third party products, websites, services and offers. These third party links, products, websites and services are not owned or controlled by Nightcat. Rather, they are operated by, and are the property of, the respective third parties, and may be protected by applicable copyright or other intellectual property laws and treaties. Nightcat has not reviewed, and assumes no responsibility for the content, functionality, security, services, privacy policies, or other practices of these third parties. You are encouraged to read the terms and other policies published by such third parties on their websites or otherwise. By using the Services, you agree that Nightcat shall not be liable in any manner due to your use of, or inability to use, any website or widget. You further acknowledge and agree that Nightcat may disable your use of, or remove, any third party links, or applications on the Services to the extent they violate these Terms of Service.</p>
                        "
                    },
                    {
                        title: "Your Representations And Warranties",
                        description: "
                            <p>25.1 You represent and warrant that:</p>
                            <ol type='a'>
                                <li>You possess the legal capacity (and in the case of a minor, valid parent or legal guardian consent), right and ability to enter into these Terms of Service and to comply with its terms and</li>
                                <li>You will use the Services for lawful purposes only and in accordance with these Terms of Service and all applicable laws, rules, codes, directives, guidelines, policies and regulations.</li>
                            </ol>
                        "
                    },
                    {
                        title: "Fraudulent Or Suspicious Activity",
                        description: "
                            <p>26.1 If Nightcat, in its sole discretion, believes that you may have engaged in any potentially fraudulent or suspicious activity and/or transactions, we may take various actions to protect Nightcat, other Buyers or Sellers, other third parties or you from Reversals, Chargebacks, Claims, fees, fines, penalties and any other liability. The actions we may take include but are not limited to the following:</p>
                            <ol type='a'>
                                <li>We may close, suspend, or limit your access to your Account or the Services, and/or suspend the processing of any transaction;</li>
                                <li>We may suspend your eligibility for Nightcat Guarantee</li>
                                <li>We may hold, apply or transfer the funds in your Account as required by judgments and orders which affect you or your Account, including judgments and orders issued by a competent court or elsewhere and directed to Nightcat</li>
                                <li>We may refuse to provide the Services to you now and in the future</li>
                                <li>We may hold your funds for a period of time reasonably needed to protect against the risk of liability to Nightcat or a third party, or if we believe that you may be engaging in potentially fraudulent or suspicious activity and/or transactions.</li>
                            </ol>
                            <p>For the purposes of this Section:</p>
                            <ol type='i'>
                                <li>'Chargeback' means a request that a Buyer files directly with his or her debit or credit card company or debit or credit card issuing bank to invalidate a payment.</li>
                                <li>'Claim' means a challenge to a payment that a Buyer or Seller files directly with Nightcat.</li>
                                <li>'Reversal' means the reversal of a payment by Nightcat because
                                    <br>    
                                    <ol type='a'>
                                        <li>it is invalidated by the sender's bank,</li>
                                        <li>it was sent to you in error by Nightcat,</li>
                                        <li>the sender of the payment did not have authorization to send the payment (for example: the sender used a stolen credit card),</li>
                                        <li>you received the payment for activities that violated these Terms of Service or any other Nightcat policy, or</li>
                                        <li>Nightcat decided a Claim against you.</li>
                                    </ol>
                                </li>
                            </ol>
                        "
                    },
                    {
                        title: "Indemnity",
                        description: "
                            <p>27.1 If any provision of these Terms of Service shall be deemed unlawful, void, or for any reason unenforceable under the law of any jurisdiction, then that provision shall be deemed severable from these terms and conditions and shall not affect the validity and enforceability of any remaining provisions in such jurisdiction nor the validity and enforceability of the provision in question under the law of any other jurisdiction.</p>
                        "
                    },
                    {
                        title: "Governing Law",
                        description: "
                            <p>28.1 These Terms of Service shall be governed by and construed in accordance with the laws of the Republic of Singapore without regard to its conflict of law rules. The United Nations Convention on Contracts for the International Sale of Goods and the Uniform Computer Information Transaction Act, to the extent applicable, are expressly disclaimed. Unless otherwise required by applicable laws, any dispute, controversy, claim or difference of any kind whatsoever shall arising out of or relating to these Terms of Service against or relating to Nightcat or any Indemnified Party under these Terms of Service shall be referred to and finally resolved by arbitration in Singapore in accordance with the Arbitration Rules of the Singapore International Arbitration Centre (“SIAC Rules”) for the time being in force, which rules are deemed to be incorporated by reference in this Section. There will be one (1) arbitrator and the language of the arbitration shall be English.</p>
                        "
                    },
                    {
                        title: "General Provisions",
                        description: "
                            <p>29.1 Nightcat reserves all rights not expressly granted herein.</p>
                            <p>29.2 Nightcat may modify these Terms of Service at any time by posting the revised Terms of Service on this Site. Your continued use of this Site after such changes have been posted shall constitute your acceptance of such revised Terms of Service.</p>
                            <p>29.3 You may not assign, sublicense or transfer any rights granted to you hereunder or subcontract any of your obligations.</p>
                            <p>29.4 Nothing in these Terms of Service shall constitute a partnership, joint venture or principal-agent relationship between you and Nightcat, nor does it authorise you to incur any costs or liabilities on Nightcat’s behalf.</p>
                            <p>29.5 The failure of Nightcat at any time or times to require performance of any provision hereof shall in no manner affect its right at a later time to enforce the same unless the same is waived in writing.</p>
                            <p>29.6 These Terms of Service are solely for your and our benefit and are not for the benefit of any other person or entity, except for Nightcat's affiliates and subsidiaries (and each of Nightcat's and its affiliates' and subsidiaries' respective successors and assigns).</p>
                            <p>29.7 The terms set forth in these Terms of Service and any agreements and policies included or referred to in these Terms of Service constitute the entire agreement and understanding of the parties with respect to the Services and the Site and supersede any previous agreement or understanding between the parties in relation to such subject matter. The parties also hereby exclude all implied terms in fact. In entering into the agreement formed by these Terms of Service, the parties have not relied on any statement, representation, warranty, understanding, undertaking, promise or assurance of any person other than as expressly set out in these Terms of Service. Each party irrevocably and unconditionally waives all claims, rights and remedies which but for this Section it might otherwise have had in relation to any of the foregoing. These Terms of Service may not be contradicted, explained or supplemented by evidence of any prior agreement, any contemporaneous oral agreement or any consistent additional terms.</p>
                            <p>29.8 You agree to comply with all applicable laws, statutes, regulations and codes relating to anti-bribery and corruption including without limitation the UK Bribery Act, the US Foreign Corrupt Practices Act, the Singapore Prevention of Corruption Act and the Malaysian Anti-Corruption Commission Act and confirm that you have and shall have in place all policies and procedures needed to ensure compliance with such requirements.</p>
                            <p>29.9 If you have any questions or concerns about these Terms of Service or any issues raised in these Terms of Service or on the Site, please contacts us at: help@support.shopee.com.my.</p>
                            <p>LEGAL NOTICES: Please send all legal notices to legal.my@shopee.com and Attention it to the “General Counsel”.</p>
                            <p>I HAVE READ THIS AGREEMENT AND AGREE TO ALL OF THE PROVISIONS CONTAINED ABOVE AND ANY REVISION THE SAME HEREAFTER. BY CLICKING THE “SIGN UP ” OR “CONNECT WITH FACEBOOK” BUTTON DURING REGISTRATION, I UNDERSTAND THAT I AM CREATING A DIGITAL SIGNATURE, WHICH I INTEND TO HAVE THE SAME FORCE AND EFFECT AS IF I HAD SIGNED MY NAME MANUALLY.</p>
                        "
                    }
                ]
            }
        ]
        return

    render: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div class='container mt-3 mb-5'>
                <div class='accordion' id='policyBody'></div>
            </div>
        "

    generateAccordions: (title) ->
        html = ""
        policy = @policies.filter((policy) => policy.id is title)
        policy[0].content.forEach((rule, i) => 
            id = ((rule.title).replace(/[\s`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, ""))
            html += "
                <div class='card z-depth-0 bordered'>
                    <div class='card-header blue lighten-5 p-0 m-0 ' id='#{id.toLowerCase()}-heading'>
                        <h5 class='mb-0'>
                            <button class='btn btn-link policy__btn' type='button' data-toggle='collapse' data-target='##{id.toLowerCase()}-body'
                                aria-expanded='true' aria-controls='collapseOne'>
                                <i class='fas fa-caret-right'></i>
                                #{rule.title}
                            </button>
                        </h5>
                    </div>
                    <div id='#{id.toLowerCase()}-body' class='collapse' aria-labelledby='#{id.toLowerCase()}-heading'
                        data-parent='#policyBody'>
                        <div class='card-body'>
                            #{rule.description}
                        </div>
                    </div>
                </div>
            "
        )
        return html

    
