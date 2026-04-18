.class public final Lnet/lingala/zip4j/util/InternalZipConstants;
.super Ljava/lang/Object;
.source "InternalZipConstants.java"


# static fields
.field public static final CHARSET_UTF_8:Ljava/nio/charset/Charset;

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 66
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    .line 68
    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method
