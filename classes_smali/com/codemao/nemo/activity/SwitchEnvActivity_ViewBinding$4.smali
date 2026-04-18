.class Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SwitchEnvActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/SwitchEnvActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/SwitchEnvActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding;Lcom/codemao/nemo/activity/SwitchEnvActivity;)V
    .registers 3

    .line 63
    iput-object p2, p0, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$4;->val$target:Lcom/codemao/nemo/activity/SwitchEnvActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$4;->val$target:Lcom/codemao/nemo/activity/SwitchEnvActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
