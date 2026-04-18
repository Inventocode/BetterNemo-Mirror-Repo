.class public final Lcom/codemao/creativecenter/utils/zip/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZipUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipUtils.kt\ncom/codemao/creativecenter/utils/zip/ZipUtils\n*L\n1#1,223:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/utils/zip/ZipUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/codemao/creativecenter/utils/zip/ZipUtils;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/zip/ZipUtils;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/zip/ZipUtils;->INSTANCE:Lcom/codemao/creativecenter/utils/zip/ZipUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fetchProgressMonitor(Lnet/lingala/zip4j/ZipFile;Ljava/lang/String;JLcom/duode/ziplibrary/OnZipStatusListener;)V
    .registers 13

    .line 82
    invoke-virtual {p1}, Lnet/lingala/zip4j/ZipFile;->getProgressMonitor()Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v1

    .line 83
    invoke-interface {p5}, Lcom/duode/ziplibrary/OnZipStatusListener;->onStart()V

    .line 84
    new-instance p1, Ljava/lang/Thread;

    new-instance v6, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;

    move-object v0, v6

    move-object v2, p5

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;-><init>(Lnet/lingala/zip4j/progress/ProgressMonitor;Lcom/duode/ziplibrary/OnZipStatusListener;Ljava/lang/String;J)V

    invoke-direct {p1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic fetchProgressMonitor$default(Lcom/codemao/creativecenter/utils/zip/ZipUtils;Lnet/lingala/zip4j/ZipFile;Ljava/lang/String;JLcom/duode/ziplibrary/OnZipStatusListener;ILjava/lang/Object;)V
    .registers 14

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_6

    const-wide/16 p3, 0x1f4

    :cond_6
    move-wide v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/utils/zip/ZipUtils;->fetchProgressMonitor(Lnet/lingala/zip4j/ZipFile;Ljava/lang/String;JLcom/duode/ziplibrary/OnZipStatusListener;)V

    return-void
.end method


# virtual methods
.method public final unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/duode/ziplibrary/OnZipStatusListener;)Ljava/lang/String;
    .registers 15

    const-string v0, "zipFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psw"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    .line 41
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/ZipFile;->setCharset(Ljava/nio/charset/Charset;)V

    .line 42
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->isValidZipFile()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_2f

    if-eqz p4, :cond_2e

    .line 43
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo p2, "压缩文件不合法,可能被损坏."

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/duode/ziplibrary/OnZipStatusListener;->onError(Ljava/lang/Exception;)V

    :cond_2e
    return-object v2

    .line 46
    :cond_2f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    if-eqz v1, :cond_4f

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 48
    new-instance p2, Ljava/io/File;

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4b

    move-object v2, p1

    :cond_4b
    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_55

    .line 50
    :cond_4f
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p2, p1

    .line 51
    :goto_55
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_64

    .line 52
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 54
    :cond_64
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x0

    :goto_6c
    if-eqz v3, :cond_80

    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_80

    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string p3, "(this as java.lang.String).toCharArray()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/ZipFile;->setPassword([C)V

    :cond_80
    const-string p1, "destDir.absolutePath"

    if-eqz p4, :cond_95

    .line 59
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/codemao/creativecenter/utils/zip/ZipUtils;->fetchProgressMonitor$default(Lcom/codemao/creativecenter/utils/zip/ZipUtils;Lnet/lingala/zip4j/ZipFile;Ljava/lang/String;JLcom/duode/ziplibrary/OnZipStatusListener;ILjava/lang/Object;)V

    .line 62
    :cond_95
    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/ZipFile;->setRunInThread(Z)V

    .line 63
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
