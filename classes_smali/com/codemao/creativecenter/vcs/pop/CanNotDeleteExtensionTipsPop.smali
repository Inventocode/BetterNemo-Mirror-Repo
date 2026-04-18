.class public final Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "CanNotDeleteExtensionTipsPop.kt"


# instance fields
.field private final content:Ljava/lang/String;

.field private final ctx:Landroid/content/Context;

.field private final yesBtnStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->content:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->yesBtnStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getCtx()Landroid/content/Context;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 13
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_can_not_delete_extension:I

    return v0
.end method

.method public final getYesBtnStr()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->yesBtnStr:Ljava/lang/String;

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 4

    .line 17
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 18
    sget v0, Lcom/codemao/creativecenter/R$id;->content_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<TextView>(R.id.content_tv)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<TextView>(R.id.tv_confirm)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->yesBtnStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop$initPopupContent$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop$initPopupContent$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
