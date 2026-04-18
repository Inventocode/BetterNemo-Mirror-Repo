.class public Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WorkDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Landroid/view/View;)V
    .registers 7

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a0096

    const-string v2, "field \'appBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 49
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c2

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    .line 50
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c3

    const-string v2, "field \'toobarEmpty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toobarEmpty:Landroid/widget/RelativeLayout;

    .line 51
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c6

    const-string v2, "field \'toobarReview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toobarReview:Landroid/widget/RelativeLayout;

    .line 52
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c4

    const-string v2, "field \'toobarError\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toobarError:Landroid/widget/RelativeLayout;

    .line 53
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c5

    const-string v2, "field \'toobarLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toobarLoading:Landroid/widget/RelativeLayout;

    .line 54
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0992

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 55
    const-class v0, Lcom/codemao/nemo/view/CustomTabView;

    const v1, 0x7f0a0760

    const-string v2, "field \'customTabView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CustomTabView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    .line 56
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03e2

    const-string v2, "field \'ivMore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    .line 57
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0364

    const-string v2, "field \'ivExit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivExit:Landroid/widget/ImageView;

    .line 58
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a04e1

    const-string v2, "field \'llRework\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a04ab

    const-string v1, "field \'llCollect\' and method \'collectWorkOrCancel\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'llCollect\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llCollect:Landroid/widget/RelativeLayout;

    .line 62
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04d5

    const-string v1, "field \'llPraise\' and method \'praiseWorkOrCancel\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'llPraise\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llPraise:Landroid/widget/RelativeLayout;

    .line 71
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04e4

    const-string v1, "field \'llShare\' and method \'showShareDialog\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 78
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'llShare\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llShare:Landroid/widget/RelativeLayout;

    .line 80
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0447

    const-string v2, "field \'ivCover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCover:Landroid/widget/ImageView;

    .line 87
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a080a

    const-string v2, "field \'tvBrowseNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvBrowseNum:Landroid/widget/TextView;

    .line 88
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08a8

    const-string v2, "field \'tvPraise\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraise:Landroid/widget/TextView;

    .line 89
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0883

    const-string v2, "field \'tvMayLike\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvMayLike:Landroid/widget/TextView;

    .line 90
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08d8

    const-string v2, "field \'tvShare\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvShare:Landroid/widget/TextView;

    .line 91
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fd

    const-string v2, "field \'tvToRework\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvToRework:Landroid/widget/TextView;

    .line 92
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0407

    const-string v2, "field \'ivToRework\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivToRework:Landroid/widget/ImageView;

    .line 93
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0812

    const-string v2, "field \'tvCollect\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollect:Landroid/widget/TextView;

    .line 94
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0449

    const-string v2, "field \'ivPlay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPlay:Landroid/widget/ImageView;

    const v0, 0x7f0a08d9

    const-string v1, "field \'tvFakerInput\' and method \'showCommentInput\'"

    .line 95
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 96
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFakerInput\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvFakerInput:Landroid/widget/TextView;

    .line 98
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0656

    const-string v2, "field \'rlScroll\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlScroll:Landroid/widget/RelativeLayout;

    .line 105
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0637

    const-string v2, "field \'rlFakerCommentInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    .line 106
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0381

    const-string v2, "field \'ivCollect\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    .line 107
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03f3

    const-string v2, "field \'ivPraise\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    .line 108
    const-class v0, Lcom/codemao/nemo/view/LoadView;

    const v1, 0x7f0a050b

    const-string v2, "field \'mLoadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoadView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    .line 109
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0813

    const-string v2, "field \'tvCollectAnim\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollectAnim:Landroid/widget/TextView;

    .line 110
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08a9

    const-string v2, "field \'tvPraiseAnim\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraiseAnim:Landroid/widget/TextView;

    .line 111
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0691

    const-string v2, "field \'rvEmpty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a06a7

    const-string v2, "field \'rvReview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->rvReview:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a0673

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->root:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0a0222

    const-string v1, "method \'refresh\'"

    .line 114
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03a2

    const-string v1, "method \'showCommentInputInExp\'"

    .line 122
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 124
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
