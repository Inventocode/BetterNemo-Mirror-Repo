.class public Lcom/codemao/toolssdk/utils/ExtLogFeature2;
.super Lcom/codemao/toolssdk/utils/ExtLogOther;
.source "ExtLogFeature2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/ExtLogFeature2$Companion;
    }
.end annotation


# instance fields
.field private final CDN_UPLOAD:Ljava/lang/String;

.field private final KEYBOARD:Ljava/lang/String;

.field private final WEB_PRE_LOAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/utils/ExtLogFeature2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/codemao/toolssdk/utils/ExtLogOther;-><init>()V

    const-string v0, "ctl2_pre_load"

    .line 13
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->WEB_PRE_LOAD:Ljava/lang/String;

    const-string v0, "ctl_cdn_upload"

    .line 14
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->CDN_UPLOAD:Ljava/lang/String;

    const-string v0, "ctl_keyboard"

    .line 15
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->KEYBOARD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dCdnUpload(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->CDN_UPLOAD:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dKeyboard(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->KEYBOARD:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dPreLoad(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->WEB_PRE_LOAD:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
