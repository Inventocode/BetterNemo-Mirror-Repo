.class final Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;
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
.field final synthetic $isNeedShowPolicy:Z

.field final synthetic this$0:Lcom/codemao/nemo/activity/login/LoginAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/LoginAction;Z)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;->$isNeedShowPolicy:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 334
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 3

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string v0, "不管弱密码，直接去首页"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-static {p1}, Lcom/codemao/nemo/activity/login/LoginAction;->access$getPasswordDialog$p(Lcom/codemao/nemo/activity/login/LoginAction;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 337
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;->$isNeedShowPolicy:Z

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/login/LoginAction;->access$goMain(Lcom/codemao/nemo/activity/login/LoginAction;Z)V

    return-void
.end method
