# Create the main repository structure
mkdir -p NOSIS-Conference/{opening-addresses,main-sessions,tracks/{business,government,academic,ai},resources}

# Create opening addresses content
cd NOSIS-Conference/opening-addresses
touch README.md
echo "# Opening Addresses" > README.md

# Create main sessions
cd ../main-sessions
mkdir -p {academia,ibm,oss-101}
touch academia/choudhury-cmu-ai.md
echo "# Choudhury CMU AI\nDetails about Choudhury's session on AI at CMU." > academia/choudhury-cmu-ai.md
touch ibm/higgins-ibm-opensource.md
echo "# Higgins IBM Open Source\nDetails about Higgins' session on IBM Open Source." > ibm/higgins-ibm-opensource.md
cd oss-101
touch {bain-business-basics.md,callinan-ratnosothy-management.md,izquierdo-project-health.md,obrien-program-offices.md}
echo "# Bain Business Basics\nDetails about Bain's session on business basics." > bain-business-basics.md
echo "# Callinan Ratnosothy Management\nDetails about Callinan and Ratnosothy's session on management." > callinan-ratnosothy-management.md
echo "# Izquierdo Project Health\nDetails about Izquierdo's session on project health." > izquierdo-project-health.md
echo "# O'Brien Program Offices\nDetails about O'Brien's session on program offices." > obrien-program-offices.md

cd ../..

# Create business track
cd tracks/business
mkdir -p {enterprise,ai-value,mercedes}
touch enterprise/casari-google-enterprise.md
echo "# Casari Google Enterprise\nDetails about Casari's session on Google Enterprise." > enterprise/casari-google-enterprise.md
touch ai-value/{bradley-aib-secure-ai.md,oneill-servisbot-ai.md}
echo "# Bradley AIB Secure AI\nDetails about Bradley's session on secure AI at AIB." > ai-value/bradley-aib-secure-ai.md
echo "# O'Neill Servisbot AI\nDetails about O'Neill's session on AI at Servisbot." > ai-value/oneill-servisbot-ai.md
touch mercedes/gehring-mercedes-vision.md
echo "# Gehring Mercedes Vision\nDetails about Gehring's session on Mercedes' vision." > mercedes/gehring-mercedes-vision.md
touch README.md
echo "# Business Track\nThis track covers why and how open source is used across tech, financial services, and the automotive industry." > README.md

# Create government track
cd ../government
mkdir -p {public-service,modern-dev}
touch public-service/{mckeever-dafm-case-study.md,shannon-ogcio-building-blocks.md}
echo "# McKeever DAFM Case Study\nDetails about McKeever's case study at DAFM." > public-service/mckeever-dafm-case-study.md
echo "# Shannon OGcio Building Blocks\nDetails about Shannon's session on OGcio building blocks." > public-service/shannon-ogcio-building-blocks.md
touch modern-dev/woodward-github-gov-apps.md
echo "# Woodward GitHub Gov Apps\nDetails about Woodward's session on GitHub government apps." > modern-dev/woodward-github-gov-apps.md
touch README.md
echo "# Government Track\nJoin this track to hear how open source is being used in Irish Public Service today." > README.md

# Create academic track
cd ../academic
mkdir -p {bioconductor,education,turing}
touch bioconductor/doyle-lero-life-sciences.md
echo "# Doyle Lero Life Sciences\nDetails about Doyle's session on life sciences at Lero." > bioconductor/doyle-lero-life-sciences.md
touch education/walli-microsoft-semesters.md
echo "# Walli Microsoft Semesters\nDetails about Walli's session on Microsoft semesters." > education/walli-microsoft-semesters.md
touch turing/sharan-turing-way.md
echo "# Sharan Turing Way\nDetails about Sharan's session on the Turing Way." > turing/sharan-turing-way.md
touch README.md
echo "# Academic Track\nOpen source is a critical part of open research." > README.md

# Create AI track
cd ../ai
mkdir -p {regulatory,future,industry}
touch regulatory/{oriordain-ofe-overview.md}
echo "# O'Riordain OFE Overview\nDetails about O'Riordain's session on OFE overview." > regulatory/oriordain-ofe-overview.md
touch future/choudhury-cmu-ai-future.md
echo "# Choudhury CMU AI Future\nDetails about Choudhury's session on the future of AI at CMU." > future/choudhury-cmu-ai-future.md
touch industry/hickey-ibm-eu-collaborations.md
echo "# Hickey IBM EU Collaborations\nDetails about Hickey's session on IBM EU collaborations." > industry/hickey-ibm-eu-collaborations.md
touch README.md
echo "# Open Source AI Track\nLatest on how open source AI is key to the current AI revolution." > README.md

# Create main README
cd ../../..
touch README.md
cat << 'EOF' > README.md
# NOSIS Conference Repository

This repository contains presentations and materials from the NOSIS Conference, organized into the following tracks:

- Opening Addresses
- Main Sessions
- Business Track
- Government Track
- Academic Track
- Open Source AI Track

Each track contains presentations, speaker materials, and related resources.
EOF

# Initialize git repository
git init
git add .
git commit -m "Initial repository structure for NOSIS Conference"
