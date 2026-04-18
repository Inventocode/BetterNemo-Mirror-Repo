.class final Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/LoginAction;->showWeakPasswordDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/codemao/nemo/activity/login/LoginAction;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/activity/login/LoginAction;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$2;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 328
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 5

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v0, "弱密码，去修改密码"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 331
    sget-object p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$2;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$2;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-virtual {v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->isVisitor()Z

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2, v1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startActivity(Landroid/content/Context;IZ)V

    return-void
.end method
