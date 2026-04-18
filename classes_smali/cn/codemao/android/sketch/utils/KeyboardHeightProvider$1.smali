.class Lcn/codemao/android/sketch/utils/KeyboardHeightProvider$1;
.super Ljava/lang/Object;
.source "KeyboardHeightProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider$1;->this$0:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider$1;->this$0:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->access$000(Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 102
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider$1;->this$0:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->access$100(Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;)V

    :cond_d
    return-void
.end method
