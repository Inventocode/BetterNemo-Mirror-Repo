.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothAction(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 456
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;->invoke([B)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([B)V
    .registers 2

    return-void
.end method
