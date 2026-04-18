.class final Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initKeyboardListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CommonInputPopV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initKeyboardListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initKeyboardListener$2;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 325
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initKeyboardListener$2;->invoke(ZI)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZI)V
    .registers 6

    .line 328
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "键盘高度viewCompat："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dKeyboard(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initKeyboardListener$2;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v0, p1, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$keyboardStateChange(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;ZI)V

    return-void
.end method
