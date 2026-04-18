.class public Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CoursePlayerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;Landroid/view/View;)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/codemao/nemo/view/CourseVideoContainer;

    const v1, 0x7f0a0455

    const-string v2, "field \'mJZVideoContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CourseVideoContainer;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a055e

    const-string v2, "field \'nameView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->nameView:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a01d1

    const-string v2, "field \'descView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->descView:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0136

    const-string v2, "field \'cl_create_work\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_create_work:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0577

    const-string v2, "field \'newWorkButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->newWorkButton:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0135

    const-string v2, "field \'cl_course_type\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_course_type:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a038a

    const-string v2, "field \'iv_course_type\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->iv_course_type:Landroid/widget/ImageView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0829

    const-string v2, "field \'tv_course_type\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->tv_course_type:Landroid/widget/TextView;

    const v0, 0x7f0a0484

    const-string v1, "field \'jz_retry_p\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->jz_retry_p:Landroid/view/View;

    const v0, 0x7f0a03e6

    const-string v1, "field \'iv_next_p\' and method \'onClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'iv_next_p\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->iv_next_p:Landroid/widget/ImageView;

    .line 54
    new-instance v0, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0899

    const-string v2, "field \'tv_next_p\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->tv_next_p:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a05ad

    const-string v2, "field \'pb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->pb:Landroid/widget/ProgressBar;

    const v0, 0x7f0a01a3

    const-string v1, "method \'onClick\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    new-instance v2, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0606

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    new-instance v2, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a060b

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    new-instance v2, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0607

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v0, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
