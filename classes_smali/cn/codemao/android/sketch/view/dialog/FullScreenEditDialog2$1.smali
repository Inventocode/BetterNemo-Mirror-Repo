.class Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$1;
.super Ljava/lang/Object;
.source "FullScreenEditDialog2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$1;->this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$1;->this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->access$000(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->start()V

    return-void
.end method
