.class final Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DSAudioRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDSAudioRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DSAudioRecorder.kt\ncom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,345:1\n1#2:346\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;

    invoke-direct {v0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;->INSTANCE:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .registers 4

    .line 42
    invoke-static {}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->access$getEnableCompress$cp()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x800

    goto :goto_30

    :cond_9
    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 46
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    const/4 v2, -0x2

    if-eq v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_2e

    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_30

    :cond_2e
    const/16 v0, 0x7d00

    .line 48
    :goto_30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
