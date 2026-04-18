.class Lcn/codemao/android/stat/CodeMaoStat$1;
.super Ljava/lang/Object;
.source "CodeMaoStat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/stat/CodeMaoStat;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/stat/CodeMaoStat;


# direct methods
.method constructor <init>(Lcn/codemao/android/stat/CodeMaoStat;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat$1;->this$0:Lcn/codemao/android/stat/CodeMaoStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 266
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat$1;->this$0:Lcn/codemao/android/stat/CodeMaoStat;

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->onTimer()V

    return-void
.end method
