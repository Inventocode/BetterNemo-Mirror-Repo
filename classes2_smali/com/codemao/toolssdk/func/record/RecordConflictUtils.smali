.class public final Lcom/codemao/toolssdk/func/record/RecordConflictUtils;
.super Ljava/lang/Object;
.source "RecordConflictUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/record/RecordConflictUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/record/RecordConflictUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/record/RecordConflictUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/record/RecordConflictUtils;->INSTANCE:Lcom/codemao/toolssdk/func/record/RecordConflictUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final showCloseToast(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "弹toast提示,关闭录音功能"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    const-string v0, "语音通话中，已关闭录音功能"

    const/4 v1, 0x0

    .line 20
    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToastNow(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public final showForbidToast(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "弹toast提示,无法使用录音功能"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    const-string v0, "语音通话中，无法使用录音功能"

    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
