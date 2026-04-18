.class public Ljxl/common/log/SimpleLogger;
.super Ljxl/common/Logger;
.source "SimpleLogger.java"


# instance fields
.field private suppressWarnings:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljxl/common/Logger;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Ljxl/common/log/SimpleLogger;->suppressWarnings:Z

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .registers 4

    .line 72
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method protected getLoggerImpl(Ljava/lang/Class;)Ljxl/common/Logger;
    .registers 2

    return-object p0
.end method

.method public setSuppressWarnings(Z)V
    .registers 2

    .line 174
    iput-boolean p1, p0, Ljxl/common/log/SimpleLogger;->suppressWarnings:Z

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 4

    .line 134
    iget-boolean v0, p0, Ljxl/common/log/SimpleLogger;->suppressWarnings:Z

    if-nez v0, :cond_10

    .line 136
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning:  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 137
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    .line 146
    iget-boolean v0, p0, Ljxl/common/log/SimpleLogger;->suppressWarnings:Z

    if-nez v0, :cond_13

    .line 148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning:  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 149
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    return-void
.end method
