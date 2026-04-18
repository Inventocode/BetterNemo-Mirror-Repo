.class Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;Landroid/app/Activity;)V
    .registers 3

    .line 210
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$1;->this$0:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;

    iput-object p2, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$1;->this$0:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;

    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->access$000(Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;Landroid/app/Activity;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
