.class public final enum Landroidx/camera/view/PreviewView$ScaleType;
.super Ljava/lang/Enum;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/view/PreviewView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_START:Landroidx/camera/view/PreviewView$ScaleType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 818
    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FILL_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

    .line 826
    new-instance v1, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v3, "FILL_CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    .line 836
    new-instance v3, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v5, "FILL_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/camera/view/PreviewView$ScaleType;->FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

    .line 847
    new-instance v5, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v7, "FIT_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroidx/camera/view/PreviewView$ScaleType;->FIT_START:Landroidx/camera/view/PreviewView$ScaleType;

    .line 856
    new-instance v7, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v9, "FIT_CENTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroidx/camera/view/PreviewView$ScaleType;->FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    .line 867
    new-instance v9, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v11, "FIT_END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroidx/camera/view/PreviewView$ScaleType;->FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

    const/4 v11, 0x6

    new-array v11, v11, [Landroidx/camera/view/PreviewView$ScaleType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 807
    sput-object v11, Landroidx/camera/view/PreviewView$ScaleType;->$VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 871
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 872
    iput p3, p0, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    return-void
.end method

.method static fromId(I)Landroidx/camera/view/PreviewView$ScaleType;
    .registers 6

    .line 880
    invoke-static {}, Landroidx/camera/view/PreviewView$ScaleType;->values()[Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 881
    iget v4, v3, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 885
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown scale type id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/view/PreviewView$ScaleType;
    .registers 2

    .line 807
    const-class v0, Landroidx/camera/view/PreviewView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/view/PreviewView$ScaleType;

    return-object p0
.end method

.method public static values()[Landroidx/camera/view/PreviewView$ScaleType;
    .registers 1

    .line 807
    sget-object v0, Landroidx/camera/view/PreviewView$ScaleType;->$VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v0}, [Landroidx/camera/view/PreviewView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/view/PreviewView$ScaleType;

    return-object v0
.end method


# virtual methods
.method getId()I
    .registers 2

    .line 876
    iget v0, p0, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    return v0
.end method
