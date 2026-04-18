.class public final Lcom/codemao/toolssdk/FFmpegCallback;
.super Ljava/lang/Object;
.source "FFmpegCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/FFmpegCallback$CallBack;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/FFmpegCallback;

.field private static callBack:Lcom/codemao/toolssdk/FFmpegCallback$CallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/FFmpegCallback;

    invoke-direct {v0}, Lcom/codemao/toolssdk/FFmpegCallback;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/FFmpegCallback;->INSTANCE:Lcom/codemao/toolssdk/FFmpegCallback;

    .line 14
    new-instance v0, Lcom/codemao/toolssdk/FFmpegCallback$callBack$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/FFmpegCallback$callBack$1;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/FFmpegCallback;->callBack:Lcom/codemao/toolssdk/FFmpegCallback$CallBack;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCallBack()Lcom/codemao/toolssdk/FFmpegCallback$CallBack;
    .registers 2

    .line 14
    sget-object v0, Lcom/codemao/toolssdk/FFmpegCallback;->callBack:Lcom/codemao/toolssdk/FFmpegCallback$CallBack;

    return-object v0
.end method
