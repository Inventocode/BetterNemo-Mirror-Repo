.class public final enum Lcom/lxj/xpopup/widget/BubbleLayout$Look;
.super Ljava/lang/Enum;
.source "BubbleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/widget/BubbleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Look"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lxj/xpopup/widget/BubbleLayout$Look;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lxj/xpopup/widget/BubbleLayout$Look;

.field public static final enum BOTTOM:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

.field public static final enum LEFT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

.field public static final enum RIGHT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

.field public static final enum TOP:Lcom/lxj/xpopup/widget/BubbleLayout$Look;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 75
    new-instance v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/widget/BubbleLayout$Look;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->LEFT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    new-instance v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    const-string v4, "TOP"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/lxj/xpopup/widget/BubbleLayout$Look;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->TOP:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    new-instance v4, Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    const-string v6, "RIGHT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/lxj/xpopup/widget/BubbleLayout$Look;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->RIGHT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    new-instance v6, Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    const-string v8, "BOTTOM"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/lxj/xpopup/widget/BubbleLayout$Look;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->BOTTOM:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    new-array v8, v9, [Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 71
    sput-object v8, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->$VALUES:[Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->value:I

    return-void
.end method

.method public static getType(I)Lcom/lxj/xpopup/widget/BubbleLayout$Look;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->BOTTOM:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_12

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    goto :goto_14

    .line 92
    :cond_c
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->RIGHT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    goto :goto_14

    .line 89
    :cond_f
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->TOP:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    goto :goto_14

    .line 86
    :cond_12
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->LEFT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    :goto_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lxj/xpopup/widget/BubbleLayout$Look;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 71
    const-class v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    return-object p0
.end method

.method public static values()[Lcom/lxj/xpopup/widget/BubbleLayout$Look;
    .registers 1

    .line 71
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->$VALUES:[Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v0}, [Lcom/lxj/xpopup/widget/BubbleLayout$Look;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    return-object v0
.end method
