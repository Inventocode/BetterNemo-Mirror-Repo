.class public final Lokhttp3/internal/platform/android/UtilKt;
.super Ljava/lang/Object;
.source "util.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nutil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 util.kt\nokhttp3/internal/platform/android/UtilKt\n*L\n1#1,41:1\n*E\n"
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# direct methods
.method public static final androidLog(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x3

    :goto_a
    if-eqz p2, :cond_24

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_24
    const/4 p0, 0x0

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_29
    if-ge p0, p2, :cond_56

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p0

    .line 32
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, p2

    :goto_3b
    add-int/lit16 v2, p0, 0xfa0

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 36
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v3, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "OkHttp"

    invoke-static {v0, v3, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v2, v1, :cond_54

    add-int/lit8 p0, v2, 0x1

    goto :goto_29

    :cond_54
    move p0, v2

    goto :goto_3b

    :cond_56
    return-void
.end method
