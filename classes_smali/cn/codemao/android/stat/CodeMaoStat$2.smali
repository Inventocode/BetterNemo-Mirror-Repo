.class Lcn/codemao/android/stat/CodeMaoStat$2;
.super Ljava/lang/Object;
.source "CodeMaoStat.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/stat/CodeMaoStat;->enableCrashReporting()Lcn/codemao/android/stat/CodeMaoStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/stat/CodeMaoStat;

.field final synthetic val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcn/codemao/android/stat/CodeMaoStat;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    .line 1248
    iput-object p1, p0, Lcn/codemao/android/stat/CodeMaoStat$2;->this$0:Lcn/codemao/android/stat/CodeMaoStat;

    iput-object p2, p0, Lcn/codemao/android/stat/CodeMaoStat$2;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 1253
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1254
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1255
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1257
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/stat/CodeMaoStat;->access$000(Lcn/codemao/android/stat/CodeMaoStat;)Lcn/codemao/android/stat/ConnectionQueue;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/codemao/android/stat/ConnectionQueue;->sendCrashReport(Ljava/lang/String;Z)V

    .line 1261
    iget-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat$2;->val$oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_24

    .line 1263
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_24
    return-void
.end method
