.class public Lcom/codemao/creativecenter/utils/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method public static exceptionToString(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .line 9
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 10
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
