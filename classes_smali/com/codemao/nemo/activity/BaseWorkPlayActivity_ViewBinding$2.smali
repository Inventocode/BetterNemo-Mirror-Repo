.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BaseWorkPlayActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V
    .registers 3

    .line 69
    iput-object p2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity_ViewBinding$2;->val$target:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 72
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity_ViewBinding$2;->val$target:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->praiseWorkOrCancel()V

    return-void
.end method
