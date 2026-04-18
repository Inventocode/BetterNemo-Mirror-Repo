.class Lcn/codemao/android/sketch/activity/ICutActivity$5;
.super Ljava/lang/Object;
.source "ICutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/ICutActivity;->finishThis()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/ICutActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$5;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity$5;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/activity/ICutActivity;->finish()V

    return-void
.end method
