.class public Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding;
.super Ljava/lang/Object;
.source "CommentInputPop_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;Landroid/view/View;)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a020a

    const-string v2, "field \'etInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08d6

    const-string v2, "field \'tvSend\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSend:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08d7

    const-string v2, "field \'tvSendExp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvSendExp:Landroid/widget/TextView;

    .line 45
    const-class v0, Lcom/codemao/nemo/view/WrapContentViewPager;

    const v1, 0x7f0a099d

    const-string v2, "field \'vpExpChoose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/WrapContentViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->vpExpChoose:Lcom/codemao/nemo/view/WrapContentViewPager;

    const v0, 0x7f0a03a1

    const-string v1, "field \'ivExp\' and method \'showExpView\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivExp\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ivExp:Landroid/widget/ImageView;

    .line 49
    new-instance v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$1;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding;Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c3

    const-string v1, "field \'ivKeyBoad\' and method \'showKeyBoard\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivKeyBoad\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ivKeyBoad:Landroid/widget/ImageView;

    .line 58
    new-instance v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$2;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding;Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0636

    const-string v2, "field \'rlExp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlExp:Landroid/widget/RelativeLayout;

    .line 65
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0641

    const-string v2, "field \'rlInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlInput:Landroid/widget/RelativeLayout;

    .line 66
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0653

    const-string v2, "field \'rlRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlRoot:Landroid/widget/FrameLayout;

    .line 67
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0692

    const-string v2, "field \'rvExp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04c3

    const-string v2, "field \'llIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    .line 69
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0693

    const-string v2, "field \'rvExpInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0824

    const-string v1, "field \'tvContent\' and method \'showKeyBoard\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvContent\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tvContent:Landroid/widget/TextView;

    .line 73
    new-instance v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding$3;-><init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop_ViewBinding;Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0654

    const-string v2, "field \'rlBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlBottom:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a027e

    const-string v1, "field \'fl_codemao\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_codemao:Landroid/view/View;

    const v0, 0x7f0a028e

    const-string v1, "field \'fl_msmao\'"

    .line 81
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_msmao:Landroid/view/View;

    const v0, 0x7f0a0279

    const-string v1, "field \'fl_aduan\'"

    .line 82
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_aduan:Landroid/view/View;

    const v0, 0x7f0a029c

    const-string v1, "field \'fl_xingnengmao\'"

    .line 83
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_xingnengmao:Landroid/view/View;

    const v0, 0x7f0a028b

    const-string v1, "field \'fl_leidianhou\'"

    .line 84
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->fl_leidianhou:Landroid/view/View;

    .line 85
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a090c

    const-string v2, "field \'tv_unable\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tv_unable:Landroid/widget/TextView;

    const v0, 0x7f0a04a5

    const-string v1, "field \'ll_author\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->ll_author:Landroid/view/View;

    .line 87
    const-class v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const v1, 0x7f0a03b6

    const-string v2, "field \'iv_header\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->iv_header:Lcom/codemao/nemo/view/RoundStrokeImageView;

    .line 88
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0892

    const-string v2, "field \'tv_name\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->tv_name:Landroid/widget/TextView;

    const v0, 0x7f0a0428

    const-string v1, "field \'iv_tag\'"

    .line 89
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->iv_tag:Landroid/view/View;

    return-void
.end method
