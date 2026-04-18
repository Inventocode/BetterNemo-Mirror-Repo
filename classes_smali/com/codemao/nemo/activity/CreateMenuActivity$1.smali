.class Lcom/codemao/nemo/activity/CreateMenuActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CreateMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CreateMenuActivity;->openMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$1;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 96
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$1;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$002(Lcom/codemao/nemo/activity/CreateMenuActivity;Z)Z

    return-void
.end method
