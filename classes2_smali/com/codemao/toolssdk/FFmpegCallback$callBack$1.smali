.class public final Lcom/codemao/toolssdk/FFmpegCallback$callBack$1;
.super Ljava/lang/Object;
.source "FFmpegCallback.kt"

# interfaces
.implements Lcom/codemao/toolssdk/FFmpegCallback$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/FFmpegCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .registers 3

    const-string v0, "execute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKit;->execute(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    return-void
.end method

.method public getSafParameterForRead(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFileUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p1, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSafParameterForRead(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getSafParameterForRead(context, selectedFileUri)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
