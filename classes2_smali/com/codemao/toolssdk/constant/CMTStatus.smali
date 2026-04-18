.class public final Lcom/codemao/toolssdk/constant/CMTStatus;
.super Ljava/lang/Object;
.source "CMTStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/constant/CMTStatus$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    return-void
.end method
