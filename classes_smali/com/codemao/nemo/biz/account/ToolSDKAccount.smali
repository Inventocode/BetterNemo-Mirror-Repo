.class public final Lcom/codemao/nemo/biz/account/ToolSDKAccount;
.super Ljava/lang/Object;
.source "ToolSDKAccount.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/account/ToolSDKAccount;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/account/ToolSDKAccount;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/account/ToolSDKAccount;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->INSTANCE:Lcom/codemao/nemo/biz/account/ToolSDKAccount;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setAccountListener(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/codemao/nemo/biz/account/ToolSDKAccount$setAccountListener$1;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/biz/account/ToolSDKAccount$setAccountListener$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V

    return-void
.end method

.method public final setBindPhoneResult(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->setBindPhoneResult(Z)V

    :cond_5
    return-void
.end method
