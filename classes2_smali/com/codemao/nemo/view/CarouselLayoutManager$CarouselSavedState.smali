.class public Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CarouselSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCenterItemPosition:I

.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1205
    new-instance v0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState$1;

    invoke-direct {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 1186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/codemao/nemo/view/CarouselLayoutManager$1;)V
    .registers 3

    .line 1175
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    iput-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    return-void
.end method

.method protected constructor <init>(Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;)V
    .registers 3

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    iget-object v0, p1, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 1191
    iget p1, p1, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return-void
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;)Landroid/os/Parcelable;
    .registers 1

    .line 1175
    iget-object p0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;)I
    .registers 1

    .line 1175
    iget p0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;I)I
    .registers 2

    .line 1175
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1201
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1202
    iget p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
