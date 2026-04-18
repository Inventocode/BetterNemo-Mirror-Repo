.class Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TipOffActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/TipOffActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/TipOffActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V
    .registers 3

    .line 97
    iput-object p2, p0, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/TipOffActivity;->selectReason(Landroid/view/View;)V

    return-void
.end method
