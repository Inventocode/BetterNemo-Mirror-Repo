.class synthetic Lcom/lxj/xpopup/widget/BubbleLayout$1;
.super Ljava/lang/Object;
.source "BubbleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/widget/BubbleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lxj$xpopup$widget$BubbleLayout$Look:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 125
    invoke-static {}, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->values()[Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$1;->$SwitchMap$com$lxj$xpopup$widget$BubbleLayout$Look:[I

    :try_start_9
    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->BOTTOM:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$1;->$SwitchMap$com$lxj$xpopup$widget$BubbleLayout$Look:[I

    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->TOP:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$1;->$SwitchMap$com$lxj$xpopup$widget$BubbleLayout$Look:[I

    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->LEFT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$1;->$SwitchMap$com$lxj$xpopup$widget$BubbleLayout$Look:[I

    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->RIGHT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
