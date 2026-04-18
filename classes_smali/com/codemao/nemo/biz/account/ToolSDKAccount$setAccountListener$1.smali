.class public final Lcom/codemao/nemo/biz/account/ToolSDKAccount$setAccountListener$1;
.super Ljava/lang/Object;
.source "ToolSDKAccount.kt"

# interfaces
.implements Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/account/ToolSDKAccount;->setAccountListener(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/account/ToolSDKAccount$setAccountListener$1;->$context:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPhone()V
    .registers 3

    .line 23
    sget-object v0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    iget-object v1, p0, Lcom/codemao/nemo/biz/account/ToolSDKAccount$setAccountListener$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->bindPhoneAndFinish(Landroid/content/Context;)V

    return-void
.end method

.method public login()V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/biz/account/ToolSDKAccount$setAccountListener$1;->$context:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method
