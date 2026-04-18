.class public Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;Landroid/view/View;)V
    .registers 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a0096

    const-string v2, "field \'appBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 56
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c2

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    .line 57
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0992

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 58
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0a0764

    const-string v2, "field \'tabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f0a0417

    const-string v1, "field \'ivShare\' and method \'showShareDialog\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivShare\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivShare:Landroid/widget/ImageView;

    .line 62
    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0364

    const-string v1, "field \'ivExit\' and method \'exit\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivExit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivExit:Landroid/widget/ImageView;

    .line 71
    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-class v0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const v1, 0x7f0a068e

    const-string v2, "field \'tagView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tagView:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const v0, 0x7f0a043c

    const-string v1, "field \'ivAvatar\' and method \'editAvatar\'"

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 79
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivAvatar\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatar:Landroid/widget/ImageView;

    .line 81
    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0363

    const-string v2, "field \'ivAvatarFrame\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatarFrame:Landroid/widget/ImageView;

    .line 88
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a042d

    const-string v2, "field \'ivTitleAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivTitleAvatar:Landroid/widget/ImageView;

    .line 89
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fb

    const-string v2, "field \'tvTitleFollow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    const v0, 0x7f0a043f

    const-string v1, "field \'ivCover\' and method \'editCover\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 91
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivCover\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivCover:Landroid/widget/ImageView;

    .line 93
    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0853

    const-string v2, "field \'tvFllowNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvFllowNum:Landroid/widget/TextView;

    const v0, 0x7f0a0660

    const-string v1, "field \'rlTitleAvatar\' and method \'followUser\'"

    .line 100
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 101
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlTitleAvatar\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    .line 103
    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a027a

    const-string v2, "field \'flAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->flAvatar:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0856

    const-string v1, "field \'tvEditOrFollow\' and method \'editUserInfo\'"

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 111
    const-class v2, Lcom/codemao/nemo/view/RoundTextView;

    const-string v3, "field \'tvEditOrFollow\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundTextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    .line 113
    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0915

    const-string v2, "field \'tvUserSign\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserSign:Landroid/widget/TextView;

    .line 120
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a084f

    const-string v2, "field \'tvFanNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvFanNum:Landroid/widget/TextView;

    .line 121
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0912

    const-string v2, "field \'tvUserName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    .line 122
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0814

    const-string v2, "field \'tvCollectNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvCollectNum:Landroid/widget/TextView;

    .line 123
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0910

    const-string v2, "field \'tvUserId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserId:Landroid/widget/TextView;

    .line 124
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0656

    const-string v2, "field \'rlScroll\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlScroll:Landroid/widget/RelativeLayout;

    .line 125
    const-class v0, Landroid/view/ViewStub;

    const v1, 0x7f0a09a0

    const-string v2, "field \'vs_forbidden\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->vs_forbidden:Landroid/view/ViewStub;

    const v0, 0x7f0a04b9

    const-string v1, "method \'toUserFans\'"

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$7;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ac

    const-string v1, "method \'toUserCollect\'"

    .line 134
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$8;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04bd

    const-string v1, "method \'toUserFollowser\'"

    .line 142
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 144
    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$9;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
