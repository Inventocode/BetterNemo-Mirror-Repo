.class Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BaseSearchActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseSearchActivity;)V
    .registers 3

    .line 67
    iput-object p2, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$3;->val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$3;->val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
