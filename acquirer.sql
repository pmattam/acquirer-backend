DROP DATABASE IF EXISTS acquirer;
CREATE DATABASE acquirer;

\c acquirer;

CREATE TABLE targets (
  id SERIAL PRIMARY KEY,
  company_name VARCHAR (100) UNIQUE NOT NULL,
  logo VARCHAR (100),
  status VARCHAR (50),
  company_profile JSON,
  financial_performance JSON,
  key_contacts JSON
);

INSERT INTO targets (company_name, logo, status, company_profile, financial_performance, key_contacts) VALUES
  ('SunTrust Banks, Inc.', '/images/company-logo/sti.png', 'Approved', 
      '{
        "address": "303 Peachtree Street N.E., Atlanta, GA 30308",
        "desc": "SunTrust Banks, Inc. operates as the holding company for SunTrust Bank that provides various financial services for consumers, businesses, corporations, and institutions in the United States. It operates through two segments, Consumer and Wholesale. The Consumer segment provides deposits and payments; home equity and personal credit lines; auto, student, and other lending products; credit cards; discount/online and full-service brokerage products; professional investment advisory products and services; and trust services, as well as family office solutions. This segment also offers residential mortgage products in the secondary market. The Wholesale segment provides capital markets solutions, including advisory, capital raising, and financial risk management, as well as lease financing solutions; cash management services and auto dealer financing solutions; and construction, mini-perm, and permanent real estate financing, as well as tailored financing and equity investment solutions. This segment also offers treasury and payment solutions, such as operating various electronic and paper payment types, which comprise card, wire transfer, automated clearing house, check, and cash; and provides services clients to manage their accounts online. The company offers its products and services through a network of traditional and in-store branches, automated teller machines, Internet, mobile, and telephone banking channels. As of December 31, 2017, it operated 1,268 full-service banking offices located in Florida, Georgia, Virginia, North Carolina, Tennessee, Maryland, South Carolina, and the District of Columbia. SunTrust Banks, Inc. was founded in 1891 and is headquartered in Atlanta, Georgia.",
        "employees": "23,785",
        "phone_number": "800-786-8787",
        "sector": "Financial Services",
        "website": "http://www.suntrust.com"
      }','{
        "revenue": "9,741M",
        "net_income": "2,273M",
        "market_cap": "31.841B",
        "financial_chart": "/images/financial-chart/sti.png"
      }','[
        {
          "name": "William Henry Rogers Jr.",
          "title": "Chairman & CEO",
          "email": "william.rogers@suntrust.com",
          "phone_number": "800-786-0001"
        },
        {
          "name": "Mark A. Chancy",
          "title": "Vice Chairman, Co-COO",
          "email": "mark.chancy@suntrust.com",
          "phone_number": "800-786-0002"
        }
      ]'
  );

  INSERT INTO targets (company_name, logo, status, company_profile, financial_performance, key_contacts) VALUES
    (
      'T-Mobile US, Inc.',
      '/images/company-logo/tmus.png',
      'Pending Approval',
      '{
        "address": "12920 SE 38th Street, Bellevue, WA 98006",
        "desc": "T-Mobile US, Inc., together with its subsidiaries, provides mobile communications services in the United States, Puerto Rico, and the United States Virgin Islands. The company offers voice, messaging, and data services to 72.6 million customers in the postpaid, prepaid, and wholesale markets. It also provides wireless devices, including smartphones, tablets, and other mobile communication devices, as well as accessories that are manufactured by various suppliers. In addition, the company offers services, devices, and accessories under the T-Mobile and MetroPCS brands through its owned and operated retail stores, third party distributors, and its Websites. It also sells its devices to dealers and other third party distributors for resale through independent third-party retail outlets and various third-party Websites. As of December 31, 2017, T-Mobile US, Inc. operated approximately 2,200 T-Mobile and MetroPCS retail locations, including stores and kiosks. The company was founded in 1994 and is headquartered in Bellevue, Washington. T-Mobile US, Inc. is a subsidiary of Deutsche Telekom AG.",
        "employees": "51,000",
        "phone_number": "425-378-4000",
        "sector": "Communication Services",
        "website": "http://www.t-mobile.com"
      }',
      '{
        "revenue": "40,604M",
        "net_income": "4,536M",
        "market_cap": "48.507B",
        "financial_chart": "/images/financial-chart/tmus.png"
      }',
      '[
        {
          "name": "John J. Legere",
          "title": "Pres, CEO & Director",
          "email": "john.legere@tmomail.net",
          "phone_number": "425-378-0001"
        },
        {
          "name": "G. Michael Sievert",
          "title": "COO & Director",
          "email": "michael.sievert@tmomail.net",
          "phone_number": "425-378-0002"
        }
      ]'
    );


  INSERT INTO targets (company_name, logo, status, company_profile, financial_performance, key_contacts) VALUES
    (
      'Cisco Systems, Inc.',
      '/images/company-logo/csco.png',
      'Declined',
      '{
        "address": "170 West Tasman Drive, San Jose, CA 95134",
        "desc": "Cisco Systems, Inc. designs, manufactures, and sells Internet Protocol (IP) based networking and other products related to the communications and information technology industry worldwide. The company offers switching products, including fixed-configuration and modular switches, and storage products that provide connectivity to end users, workstations, IP phones, wireless access points, and servers; and next-generation network routing products that interconnect public and private wireline and mobile networks for mobile, data, voice, and video applications. It also provides collaboration products comprising unified communications products, conferencing products, collaboration endpoints, and business messaging products; data center products, such as blade and rack servers, series, fabric interconnects, and management software solutions; wireless products consisting of wireless access points, WLAN controllers, cloud and appliances based services, and integrated software services. In addition, the company offers security products, including network and data center security, advanced threat protection, Web and email security, access and policy, unified threat management, and advisory, integration, and managed services; and other products, such as emerging technologies and other networking products. Further, the company offers a distributed file system for hyperconvergence that enables server-based storage systems; service provider video software and solutions; and technical support services and advanced services. It serves businesses of various sizes, public institutions, governments, and service providers. The company sells its products directly, as well as through channel partners, such as systems integrators, service providers, other resellers, and distributors. The company was founded in 1984 and is headquartered in San Jose, California.",
        "employees": "72,900",
        "phone_number": "408-526-4000",
        "sector": "Technology",
        "website": "http://www.cisco.com"
      }',
      '{
        "revenue": "48,005M",
        "net_income": "9,609M",
        "market_cap": "204.199B",
        "financial_chart": "/images/financial-chart/csco.png"
      }',
      '[
        {
          "name": "Charles H. Robbins",
          "title": "Chairman & CEO",
          "email": "charles.robbins@cisco.com",
          "phone_number": "408-526-4001"
        },
        {
          "name": "Kelly A. Kramer",
          "title": "Exec. VP & CFO",
          "email": "kelly.kramer@cisco.com",
          "phone_number": "408-526-4002"
        }
      ]'
    );

  INSERT INTO targets (company_name, logo, status, company_profile, financial_performance, key_contacts) VALUES
    (
      'Advanced Micro Devices, Inc.',
      '/images/company-logo/amd.png',
      'Researching',
      '{
          "address": "2485 Augustine Drive, Santa Clara, CA 95054",
          "desc": "Advanced Micro Devices, Inc. operates as a semiconductor company worldwide. It operates in two segments, Computing and Graphics; and Enterprise, Embedded and Semi-Custom. The company products include x86 microprocessors as an accelerated processing unit (APU), chipsets, discrete and integrated graphics processing units (GPUs), and professional GPUs; and server and embedded processors, and semi-custom System-on-Chip (SoC) products and technology for game consoles. It provides x86 microprocessors for desktop PCs under the AMD Ryzen, AMD Ryzen Pro, Threadripper, AMD A-Series, AMD E-Series, AMD FX CPU, AMD Athlon CPU and APU, AMD Sempron APU and CPU, and AMD Pro A-Series APU brands; microprocessors for notebook and 2-in-1s under the AMD Ryzen processors with Radeon Vega GPUs, AMD A-Series, AMD E-Series, AMD C-Series, AMD Z-Series, AMD FX APU, AMD Phenom, AMD Athlon CPU and APU, AMD Turion, and AMD Sempron APU and CPU brands; and microprocessors for servers under the AMD EPYC and AMD Opteron brands. It also offers chipsets under the AMD brand; discrete GPUs for desktop and notebook PCs under the AMD Radeon and AMD Embedded Radeon brand; professional graphic products under the AMD Radeon Pro and AMD FirePro brands; and customer-specific solutions based on AMDs CPU, GPU, and multi-media technologies. In addition, it provides embedded processor solutions for interactive digital signage, casino gaming, and medical imaging under the AMD Opteron, AMD Athlon, AMD Sempron, AMD Geode, AMD R-Series, G-Series, and AMD Embedded Radeon brands; consumer graphics under the AMD Radeon brand; and semi-custom SoC products. It serves original equipment and design manufacturers, datacenters, system integrators, distributors, and add-in-board manufacturers through its direct sales force, independent distributors, and sales representatives. Advanced Micro Devices, Inc. was founded in 1969 and is headquartered in Santa Clara, California.",
          "employees": "8,900",
          "phone_number": "408-749-4000",
          "sector": "Technology",
          "website": "http://www.amd.com"
      }',
      '{
          "revenue": "5,329M",
          "net_income": "43M",
          "market_cap": "15.19B",
          "financial_chart": "/images/financial-chart/amd.png"
      }',
      '[
        {
          "name": "Lisa T. Su",
          "title": "Pres, CEO & Non-Independent Director",
          "email": "lisa.su@amd.com",
          "phone_number": "408-749-4001"
        },
        {
          "name": "Devinder Kumar",
          "title": "Sr. VP, CFO & Treasurer",
          "email": "devinder.kumar@amd.com",
          "phone_number": "408-749-4002"
        }
      ]'
    );
