.class Lcn/codemao/android/stat/CMSpUtils$1;
.super Ljava/lang/Object;
.source "CMSpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/stat/CMSpUtils;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcn/codemao/android/stat/CMSpUtils;Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcn/codemao/android/stat/CMSpUtils$1;->this$0:Lcn/codemao/android/stat/CMSpUtils;

    iput-object p2, p0, Lcn/codemao/android/stat/CMSpUtils$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcn/codemao/android/stat/CMSpUtils$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
