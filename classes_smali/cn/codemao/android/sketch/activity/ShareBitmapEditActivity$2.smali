.class Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$2;
.super Ljava/lang/Object;
.source "ShareBitmapEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 111
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;->finish()V

    return-void
.end method
