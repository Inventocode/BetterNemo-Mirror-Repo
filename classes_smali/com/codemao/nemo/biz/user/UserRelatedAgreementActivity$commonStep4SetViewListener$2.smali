.class final Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserRelatedAgreementActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;->commonStep4SetViewListener()V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$2;->this$0:Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 25
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 3

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity$commonStep4SetViewListener$2;->this$0:Lcom/codemao/nemo/biz/user/UserRelatedAgreementActivity;

    invoke-static {p1}, Lcom/codemao/nemo/util/WebUtil;->goPrivateProvision(Landroid/content/Context;)V

    return-void
.end method
