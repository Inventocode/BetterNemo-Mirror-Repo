.class public final Lcom/codemao/nemo/util/CMToolsUtils;
.super Ljava/lang/Object;
.source "CMToolsUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/util/CMToolsUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/util/CMToolsUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/util/CMToolsUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/CMToolsUtils;->INSTANCE:Lcom/codemao/nemo/util/CMToolsUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateToken()V
    .registers 7

    .line 9
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getAccountToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    goto :goto_27

    .line 12
    :cond_21
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    :goto_27
    return-void
.end method
