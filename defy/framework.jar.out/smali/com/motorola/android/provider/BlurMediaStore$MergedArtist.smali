.class public final Lcom/motorola/android/provider/BlurMediaStore$MergedArtist;
.super Ljava/lang/Object;
.source "BlurMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/BlurMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MergedArtist"
.end annotation


# static fields
.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final EXTERNAL_MERGED_ARTISTS_PER_GENRE_ID_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_MERGED_ARTISTS_PER_GENRE_ID_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "internal"

    invoke-static {v0}, Lcom/motorola/android/provider/BlurMediaStore$MergedArtist;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/BlurMediaStore$MergedArtist;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "external"

    invoke-static {v0}, Lcom/motorola/android/provider/BlurMediaStore$MergedArtist;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/BlurMediaStore$MergedArtist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://media/internal/blurgenres/artist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/BlurMediaStore$MergedArtist;->INTERNAL_MERGED_ARTISTS_PER_GENRE_ID_URI:Landroid/net/Uri;

    const-string v0, "content://media/external/blurgenres/artist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/BlurMediaStore$MergedArtist;->EXTERNAL_MERGED_ARTISTS_PER_GENRE_ID_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeName"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mergedartist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
