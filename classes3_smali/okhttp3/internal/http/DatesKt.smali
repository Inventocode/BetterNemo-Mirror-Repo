.class public final Lokhttp3/internal/http/DatesKt;
.super Ljava/lang/Object;
.source "dates.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ndates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 dates.kt\nokhttp3/internal/http/DatesKt\n*L\n1#1,107:1\n*E\n"
.end annotation


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field public static final MAX_DATE:J = 0xe677d21fdbffL

.field private static final STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 32
    new-instance v0, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-direct {v0}, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v3, "EEE MMM d HH:mm:ss yyyy"

    const-string v4, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v5, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v6, "EEE, dd MMM yy HH:mm:ss z"

    const-string v7, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v8, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v9, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v10, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v11, "EEE dd MMM yy HH:mm:ss z"

    const-string v12, "EEE,dd-MMM-yy HH:mm:ss z"

    const-string v13, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const-string v14, "EEE, dd-MM-yyyy HH:mm:ss z"

    const-string v15, "EEE MMM d yyyy HH:mm:ss z"

    .line 62
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 43
    sput-object v0, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 66
    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void
.end method

.method public static final toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;
    .registers 11

    const-string v0, "$this$toHttpDateOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/4 v2, 0x0

    if-eqz v0, :cond_13

    return-object v2

    .line 72
    :cond_13
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 73
    sget-object v3, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormat;

    invoke-virtual {v3, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 74
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_2f

    return-object v3

    .line 79
    :cond_2f
    sget-object v3, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v3

    .line 80
    :try_start_32
    array-length v4, v3

    const/4 v5, 0x0

    :goto_34
    if-ge v5, v4, :cond_60

    .line 81
    sget-object v6, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v7, v6, v5

    if-nez v7, :cond_4e

    .line 83
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v8, v8, v5

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    sget-object v8, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    aput-object v7, v6, v5

    .line 90
    :cond_4e
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 91
    invoke-virtual {v7, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    .line 92
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_64

    if-eqz v7, :cond_5d

    .line 98
    monitor-exit v3

    return-object v6

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 101
    :cond_60
    :try_start_60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_64

    .line 79
    monitor-exit v3

    return-object v2

    :catchall_64
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public static final toHttpDateString(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    const-string v0, "$this$toHttpDateString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "STANDARD_DATE_FORMAT.get().format(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
