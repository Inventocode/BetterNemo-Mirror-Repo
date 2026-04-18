.class public Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Landroid/view/View;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c2

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->toolbar:Landroid/widget/RelativeLayout;

    .line 45
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0679

    const-string v2, "field \'rlRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a062d

    const-string v1, "field \'rlContent\' and method \'showKeyBoard\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlContent\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlContent:Landroid/widget/RelativeLayout;

    .line 49
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08b2

    const-string v1, "field \'tvPublish\' and method \'publishWork\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvPublish\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvPublish:Landroid/widget/TextView;

    .line 58
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0364

    const-string v1, "field \'ivExit\' and method \'back\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 65
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivExit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivExit:Landroid/widget/ImageView;

    .line 67
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0447

    const-string v1, "field \'ivCover\' and method \'ShowCoverEdit\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivCover\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ivCover:Landroid/widget/ImageView;

    .line 76
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ea

    const-string v1, "field \'tvOpenSource\' and method \'changeOpenSouce\'"

    .line 82
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 83
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'tvOpenSource\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvOpenSource:Landroid/widget/ImageView;

    .line 85
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a022a

    const-string v2, "field \'etDes\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    .line 92
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a022b

    const-string v2, "field \'etName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    .line 93
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0867

    const-string v2, "field \'tvAllowNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvAllowNum:Landroid/widget/TextView;

    .line 94
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0626

    const-string v2, "field \'rlAllowNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    .line 95
    const-class v0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    const v1, 0x7f0a06c9

    const-string v2, "field \'scrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->scrollView:Lcom/codemao/nemo/view/CompatibleNestedScrollView;

    .line 96
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a082a

    const-string v1, "method \'ShowCoverEdit\'"

    .line 97
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity_ViewBinding;Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
