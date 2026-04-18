.class Lcn/codemao/android/sketch/activity/EditActivity$1;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/EditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/EditActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/EditActivity;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$1;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/EditActivity$1;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/EditActivity;->access$000(Lcn/codemao/android/sketch/activity/EditActivity;)Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->start()V

    return-void
.end method
