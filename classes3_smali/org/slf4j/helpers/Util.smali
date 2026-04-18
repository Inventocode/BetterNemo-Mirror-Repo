.class public final Lorg/slf4j/helpers/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static final report(Ljava/lang/String;)V
    .registers 4

    .line 127
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLF4J: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static final report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 121
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Reported exception:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static safeGetBooleanSystemProperty(Ljava/lang/String;)Z
    .registers 2

    .line 52
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string v0, "true"

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 44
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7} :catch_7

    :catch_7
    return-object v0

    .line 40
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
