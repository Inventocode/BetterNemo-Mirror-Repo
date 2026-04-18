.class public Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "WorkDetailFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;Landroid/view/View;)V
    .registers 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0836

    const-string v2, "field \'tvDes\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08c8

    const-string v2, "field \'tvReworkUserName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkUserName:Landroid/widget/TextView;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0923

    const-string v2, "field \'tvWorkName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkName:Landroid/widget/TextView;

    const v0, 0x7f0a0912

    const-string v1, "field \'tvUserName\' and method \'toUserDetail\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvUserName\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvUserName:Landroid/widget/TextView;

    .line 42
    new-instance v0, Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$1;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding;Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0299

    const-string v2, "field \'flUserName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->flUserName:Landroid/view/ViewGroup;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08e4

    const-string v2, "field \'tvWorkSource\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a041e

    const-string v2, "field \'ivWorkSource\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivWorkSource:Landroid/widget/ImageView;

    .line 51
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a046a

    const-string v2, "field \'knNormalContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->knNormalContainer:Landroid/view/ViewGroup;

    .line 52
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0466

    const-string v2, "field \'knAIContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->knAIContainer:Landroid/view/ViewGroup;

    .line 53
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0848

    const-string v2, "field \'ivExpand\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    .line 54
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0287

    const-string v2, "field \'flDes\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->flDes:Landroid/widget/RelativeLayout;

    .line 55
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0631

    const-string v2, "field \'rlNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rlNum:Landroid/widget/LinearLayout;

    .line 56
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0830

    const-string v2, "field \'tvDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f0a0854

    const-string v1, "field \'tvFollow\' and method \'follow\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 58
    const-class v2, Lcom/codemao/nemo/view/RoundTextView;

    const-string v3, "field \'tvFollow\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundTextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    .line 60
    new-instance v0, Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$2;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding;Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0808

    const-string v2, "field \'tvBlockNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvBlockNum:Landroid/widget/TextView;

    .line 67
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08ce

    const-string v2, "field \'tvRoleNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvRoleNum:Landroid/widget/TextView;

    .line 68
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08c7

    const-string v2, "field \'tvReworkAllow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkAllow:Landroid/widget/TextView;

    .line 69
    const-class v0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const v1, 0x7f0a06b3

    const-string v2, "field \'rv_tags\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rv_tags:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    .line 70
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a068d

    const-string v2, "field \'rv_detail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rv_detail:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0441

    const-string v2, "field \'ivUserLevelSign\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    .line 72
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0363

    const-string v2, "field \'ivAvatarFrame\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivAvatarFrame:Landroid/widget/ImageView;

    .line 73
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04ae

    const-string v2, "field \'ll_content\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ll_content:Landroid/widget/LinearLayout;

    const v0, 0x7f0a043c

    const-string v1, "field \'ivUserAvatar\' and method \'toUserDetail\'"

    .line 74
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 75
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivUserAvatar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserAvatar:Landroid/widget/ImageView;

    .line 77
    new-instance v0, Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$3;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding;Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
