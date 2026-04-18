.class public final enum Lcom/lxj/xpopup/enums/DragOrientation;
.super Ljava/lang/Enum;
.source "DragOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lxj/xpopup/enums/DragOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lxj/xpopup/enums/DragOrientation;

.field public static final enum DragToBottom:Lcom/lxj/xpopup/enums/DragOrientation;

.field public static final enum DragToLeft:Lcom/lxj/xpopup/enums/DragOrientation;

.field public static final enum DragToRight:Lcom/lxj/xpopup/enums/DragOrientation;

.field public static final enum DragToUp:Lcom/lxj/xpopup/enums/DragOrientation;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 8
    new-instance v0, Lcom/lxj/xpopup/enums/DragOrientation;

    const-string v1, "DragToUp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lxj/xpopup/enums/DragOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToUp:Lcom/lxj/xpopup/enums/DragOrientation;

    new-instance v1, Lcom/lxj/xpopup/enums/DragOrientation;

    const-string v3, "DragToBottom"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lxj/xpopup/enums/DragOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lxj/xpopup/enums/DragOrientation;->DragToBottom:Lcom/lxj/xpopup/enums/DragOrientation;

    new-instance v3, Lcom/lxj/xpopup/enums/DragOrientation;

    const-string v5, "DragToLeft"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lxj/xpopup/enums/DragOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lxj/xpopup/enums/DragOrientation;->DragToLeft:Lcom/lxj/xpopup/enums/DragOrientation;

    new-instance v5, Lcom/lxj/xpopup/enums/DragOrientation;

    const-string v7, "DragToRight"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/lxj/xpopup/enums/DragOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/lxj/xpopup/enums/DragOrientation;->DragToRight:Lcom/lxj/xpopup/enums/DragOrientation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/lxj/xpopup/enums/DragOrientation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 7
    sput-object v7, Lcom/lxj/xpopup/enums/DragOrientation;->$VALUES:[Lcom/lxj/xpopup/enums/DragOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lxj/xpopup/enums/DragOrientation;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 7
    const-class v0, Lcom/lxj/xpopup/enums/DragOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lxj/xpopup/enums/DragOrientation;

    return-object p0
.end method

.method public static values()[Lcom/lxj/xpopup/enums/DragOrientation;
    .registers 1

    .line 7
    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->$VALUES:[Lcom/lxj/xpopup/enums/DragOrientation;

    invoke-virtual {v0}, [Lcom/lxj/xpopup/enums/DragOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lxj/xpopup/enums/DragOrientation;

    return-object v0
.end method
