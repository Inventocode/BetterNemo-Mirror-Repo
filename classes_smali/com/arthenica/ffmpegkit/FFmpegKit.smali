.class public Lcom/arthenica/ffmpegkit/FFmpegKit;
.super Ljava/lang/Object;
.source "FFmpegKit.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static execute(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .registers 1

    .line 167
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKit;->executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object p0

    return-object p0
.end method

.method public static executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .registers 1

    .line 58
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ffmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    return-object p0
.end method
