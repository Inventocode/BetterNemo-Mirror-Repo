.class public final enum Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;
.super Ljava/lang/Enum;
.source "CommonInputPopV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

.field public static final enum ListElements:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

.field public static final enum Variable:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    sget-object v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->Variable:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->ListElements:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 106
    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    const-string v1, "Variable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->Variable:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    const-string v1, "ListElements"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->ListElements:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    invoke-static {}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->$values()[Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->$VALUES:[Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->$VALUES:[Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    return-object v0
.end method
