.class Lcom/codemao/nemo/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->initViewSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$2;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$2;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$100(Lcom/codemao/nemo/activity/LoginActivity;)V

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$2;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-boolean v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->fromFirst:Z

    if-eqz v1, :cond_f

    .line 228
    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$200(Lcom/codemao/nemo/activity/LoginActivity;)V

    goto :goto_12

    .line 230
    :cond_f
    invoke-static {v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$300(Lcom/codemao/nemo/activity/LoginActivity;)V

    :goto_12
    return-void
.end method
