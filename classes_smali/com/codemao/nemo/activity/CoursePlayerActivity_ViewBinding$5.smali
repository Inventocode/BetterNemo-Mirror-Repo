.class Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CoursePlayerActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/CoursePlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/CoursePlayerActivity;)V
    .registers 3

    .line 88
    iput-object p2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
