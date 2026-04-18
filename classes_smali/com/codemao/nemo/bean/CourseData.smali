.class public Lcom/codemao/nemo/bean/CourseData;
.super Ljava/lang/Object;
.source "CourseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/CourseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_BOX:Ljava/lang/String; = "box"

.field public static final PLATFORM_HAIGUI:Ljava/lang/String; = "海龟"

.field public static final PLATFORM_KIDS:Ljava/lang/String; = "kids"

.field public static final PLATFORM_KITTEN3:Ljava/lang/String; = "kitten3"

.field public static final PLATFORM_KITTEN4:Ljava/lang/String; = "kitten4"

.field public static final PLATFORM_NEMO:Ljava/lang/String; = "nemo"

.field public static final PLATFORM_OTHER:Ljava/lang/String; = "外部平台"


# instance fields
.field public bgImageRes:I

.field public content_url:Ljava/lang/String;

.field public created_at:J

.field public description:Ljava/lang/String;

.field public difficulty:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public is_played:Z

.field public key_frame_url:Ljava/lang/String;

.field public large_preview_url:Ljava/lang/String;

.field public middle_preview_url:Ljava/lang/String;

.field public n_plays:J

.field public new_preview_url:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public updated_at:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Lcom/codemao/nemo/bean/CourseData$1;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CourseData$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/CourseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->platform:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->content_url:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/bean/CourseData;->created_at:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->description:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->difficulty:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->duration:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->id:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/CourseData;->is_played:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->key_frame_url:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->large_preview_url:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->middle_preview_url:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/bean/CourseData;->n_plays:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->new_preview_url:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->title:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->type:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseData;->platform:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/bean/CourseData;->updated_at:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/bean/CourseData;->bgImageRes:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 62
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->content_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseData;->created_at:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->difficulty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->duration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-boolean p2, p0, Lcom/codemao/nemo/bean/CourseData;->is_played:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->key_frame_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->large_preview_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->middle_preview_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseData;->n_plays:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->new_preview_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseData;->platform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseData;->updated_at:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget p2, p0, Lcom/codemao/nemo/bean/CourseData;->bgImageRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
